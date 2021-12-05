package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import jdbc.ConnectionProvider;
import model.Adquirible;
import model.Atraccion;
import model.ParqueAtracciones;
import model.Promocion;
import model.PromocionAbsoluta;
import model.PromocionAxB;
import model.PromocionPorcentual;

public class PromocionDAOImpl implements PromocionDAO {

	public List<Promocion> findAll() {
		try {
			String sql = "SELECT promociones.*, group_concat(ap.id_atraccion,' ') AS lista_atracciones\r\n"
					+ "FROM promociones\r\n"
					+ "JOIN atracciones_promociones ap ON ap.id_promocion = promociones.id_promocion\r\n"
					+ "WHERE promocion_activa = 1" + "GROUP BY promociones.id_promocion";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet resultados = statement.executeQuery();

			List<Promocion> listaPromociones = new LinkedList<Promocion>();

			while (resultados.next()) {
				listaPromociones.add(toPromocion(resultados));
			}
			return listaPromociones;

		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public int agregarPromocion(ParqueAtracciones parque, String tipoPromocion, String tematica, Atraccion atraccion1,
			Atraccion atraccion2, double parametro) {
		try {
			Promocion promocion;

			if (tipoPromocion == "ABSOLUTA") {
				promocion = new PromocionAbsoluta(this.obtenerUltimoIDPromocion() + 1, tematica, atraccion1, atraccion2,
						parametro);
				this.agregarPromocionAbsoluta((PromocionAbsoluta) promocion);
			} else {
				promocion = new PromocionPorcentual(this.obtenerUltimoIDPromocion() + 1, tematica, atraccion1,
						atraccion2, parametro);
				this.agregarPromocionPorcentual((PromocionPorcentual) promocion);
			}
			parque.agregarPromocion(promocion);

			for (Atraccion atraccion : promocion.atraccionesIncluidas()) {
				this.agregarAtraccionesAPromocion(promocion, atraccion);
			}

			return 1;

		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public void agregarPromocion(ParqueAtracciones parque, String tipoPromocion, String tematica, Atraccion atraccion1,
			Atraccion atraccion2, Atraccion atraccion3) {
		try {
			Promocion promocion = new PromocionAxB(this.obtenerUltimoIDPromocion() + 1, tematica, atraccion1,
					atraccion2, atraccion3);
			this.agregarPromocionAxB((PromocionAxB) promocion);
			parque.agregarPromocion(promocion);

			for (Atraccion atraccion : promocion.atraccionesIncluidas()) {
				this.agregarAtraccionesAPromocion(promocion, atraccion);
			}

		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private int agregarPromocionAbsoluta(PromocionAbsoluta promocion) {
		try {
			String sql = "INSERT INTO promociones (nombre_promocion, id_tipo_promocion, parametro, promocion_activa) VALUES (?, ?, ?, 1)";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, promocion.getTematica());
			statement.setInt(2, this.obtenerIdTipoPromocion(promocion.getTipoPromocion()));
			statement.setDouble(3, promocion.getDescuento());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private int agregarPromocionPorcentual(PromocionPorcentual promocion) {
		try {
			String sql = "INSERT INTO promociones (nombre_promocion, id_tipo_promocion, parametro, promocion_activa) VALUES (?, ?, ?, 1)";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, promocion.getTematica());
			statement.setInt(2, this.obtenerIdTipoPromocion(promocion.getTipoPromocion()));
			statement.setDouble(3, promocion.getPorcentajeDescuento());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private int agregarPromocionAxB(PromocionAxB promocion) {
		try {
			String sql = "INSERT INTO promociones (nombre_promocion, id_tipo_promocion, parametro, promocion_activa) VALUES (?, ?, ?, 1)";
			Connection conn = ConnectionProvider.getConnection();

			AtraccionDAO atraccionDAO = DAOFactory.getAtraccionesDAO();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, promocion.getTematica());
			statement.setInt(2, this.obtenerIdTipoPromocion(promocion.getTipoPromocion()));
			statement.setInt(3, atraccionDAO.encontrarIdAtraccion(promocion.getAtraccionGratis()));
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private int agregarAtraccionesAPromocion(Promocion promocion, Atraccion atraccion) {
		try {
			String sql = "INSERT INTO atracciones_promociones (id_promocion, id_atraccion) VALUES (?, ?)";
			Connection conn = ConnectionProvider.getConnection();

			AtraccionDAO atraccionDAO = DAOFactory.getAtraccionesDAO();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, this.encontrarIdPromocion(promocion));
			statement.setInt(2, atraccionDAO.encontrarIdAtraccion(atraccion));
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public int eliminarPromocion(ParqueAtracciones parque, Promocion promocion) {
		try {
			String sql = "UPDATE promociones SET promocion_activa = 0 WHERE id_promocion = ?";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, promocion.getId());
			int rows = statement.executeUpdate();

			parque.eliminarPromocion(promocion);

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public int updatePromocion(Promocion promocion) {
		try {
			int numeroAtraccion = 0;
			for (Atraccion atraccion : promocion.atraccionesIncluidas()) {
				this.updateAtraccionesPromociones(promocion, atraccion, numeroAtraccion);
				numeroAtraccion++;
			}

			String tipoPromocion = promocion.getTipoPromocion();
			if (tipoPromocion == "ABSOLUTA") {
				return this.updatePromocionAbsoluta((PromocionAbsoluta) promocion);
			} else if (tipoPromocion == "PORCENTUAL") {
				return this.updatePromocionPorcentual((PromocionPorcentual) promocion);
			} else {
				return this.updatePromocionAxB((PromocionAxB) promocion);
			}

		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private int updatePromocionAbsoluta(PromocionAbsoluta promocion) {
		try {
			String sql = "UPDATE promociones SET nombre_promocion = ?, id_tipo_promocion = ?, parametro = ? WHERE id_promocion = ?";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, promocion.getTematica());
			statement.setInt(2, this.obtenerIdTipoPromocion(promocion.getTipoPromocion()));
			statement.setDouble(3, promocion.getDescuento());
			statement.setInt(5, promocion.getId());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private int updatePromocionPorcentual(PromocionPorcentual promocion) {
		try {
			String sql = "UPDATE promociones SET nombre_promocion = ?, id_tipo_promocion = ?, parametro = ? WHERE id_promocion = ?";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, promocion.getTematica());
			statement.setInt(2, this.obtenerIdTipoPromocion(promocion.getTipoPromocion()));
			statement.setDouble(3, promocion.getPorcentajeDescuento());
			statement.setInt(5, promocion.getId());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private int updatePromocionAxB(PromocionAxB promocion) {
		try {
			String sql = "UPDATE promociones SET nombre_promocion = ?, id_tipo_promocion = ?, parametro = ? WHERE id_promocion = ?";
			Connection conn = ConnectionProvider.getConnection();

			AtraccionDAO atraccionDAO = DAOFactory.getAtraccionesDAO();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, promocion.getTematica());
			statement.setInt(2, this.obtenerIdTipoPromocion(promocion.getTipoPromocion()));
			statement.setDouble(3, atraccionDAO.encontrarIdAtraccion(promocion.getAtraccionGratis()));
			;
			statement.setInt(5, promocion.getId());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private int updateAtraccionesPromociones(Promocion promocion, Atraccion atraccion, int numeroAtraccion) {
		try {
			String sql = "UPDATE atracciones_promociones \r\n" + "SET id_atraccion = ? \r\n" + "WHERE ROWID =(\r\n"
					+ "SELECT ROWID\r\n" + "FROM atracciones_promociones\r\n" + "WHERE id_promocion = ?\r\n"
					+ "ORDER BY ROWID ASC\r\n" + "LIMIT ?, 1\r\n" + ")";
			Connection conn = ConnectionProvider.getConnection();

			AtraccionDAO atraccionDAO = DAOFactory.getAtraccionesDAO();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, atraccionDAO.encontrarIdAtraccion(atraccion));
			statement.setInt(2, this.encontrarIdPromocion(promocion));
			statement.setInt(3, numeroAtraccion);
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public int encontrarIdPromocion(Adquirible promocion) {
		try {
			String sql = "SELECT * FROM promociones WHERE nombre_promocion = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, promocion.getTematica());
			ResultSet resultados = statement.executeQuery();

			int id = 0;

			if (resultados.next()) {
				id = resultados.getInt("id_promocion");
			}
			return id;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public Promocion buscarPorId(int id) {
		try {
			String sql = "SELECT promociones.*, group_concat(ap.id_atraccion,' ') AS lista_atracciones\r\n"
					+ "FROM promociones\r\n"
					+ "JOIN atracciones_promociones ap ON ap.id_promocion = promociones.id_promocion\r\n"
					+ "WHERE promociones.id_promocion = ?\r\n" + "GROUP BY promociones.id_promocion";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet resultados = statement.executeQuery();

			Promocion promocion = null;

			if (resultados.next()) {
				promocion = toPromocion(resultados);
			}
			return promocion;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

// ver si este metodo lo dejamos aca o en clase aparte	
	private int obtenerIdTipoPromocion(String tipoPromocion) {
		try {
			String sql = "SELECT *\r\n" + "FROM tipo_promociones\r\n" + "WHERE tipo_promocion = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, tipoPromocion);
			ResultSet resultados = statement.executeQuery();

			int id = 0;

			if (resultados.next()) {
				id = resultados.getInt("id_tipo_promocion");
			}
			return id;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public int obtenerUltimoIDPromocion() {
		try {
			String sql = "SELECT max(id_promocion) AS 'id'\r\n" + "FROM promociones";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet resultados = statement.executeQuery();

			int id = 0;

			if (resultados.next()) {
				id = resultados.getInt("id");
			}
			return id;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private Promocion toPromocion(ResultSet resultados) throws SQLException {
		Promocion promocion = null;
		AtraccionDAO atraccionesDAO = DAOFactory.getAtraccionesDAO();

		int id = resultados.getInt("id_promocion");
		int tipoPromocion = resultados.getInt("id_tipo_promocion");
		String tematica = resultados.getString("nombre_promocion");
		String atraccionesIncluidas = resultados.getString("lista_atracciones");
		int parametro = resultados.getInt("parametro");

		String[] atr = atraccionesIncluidas.split(" ");

		Atraccion[] atracciones = new Atraccion[2];
		int contador = 0;

		for (String i : atr) {
			if (tipoPromocion == 3) {
				if (Integer.parseInt(i) != parametro) {
					atracciones[contador] = atraccionesDAO.buscarPorId(Integer.parseInt(i));
					contador++;
				}
			} else {
				atracciones[contador] = atraccionesDAO.buscarPorId(Integer.parseInt(i));
				contador++;
			}
		}
		switch (tipoPromocion) {
		case 1:
			promocion = new PromocionPorcentual(id, tematica, atracciones[0], atracciones[1], parametro);
			break;
		case 2:
			promocion = new PromocionAbsoluta(id, tematica, atracciones[0], atracciones[1], parametro);
			break;
		case 3:
			Atraccion atraccionGratis = atraccionesDAO.buscarPorId(parametro);
			promocion = new PromocionAxB(id, tematica, atracciones[0], atracciones[1], atraccionGratis);
			break;
		}
		return promocion;
	}
}