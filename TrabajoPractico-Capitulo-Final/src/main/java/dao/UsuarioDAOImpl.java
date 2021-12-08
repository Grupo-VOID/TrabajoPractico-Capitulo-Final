package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import jdbc.ConnectionProvider;
import model.ParqueAtracciones;
import model.Usuario;

public class UsuarioDAOImpl implements UsuarioDAO {

	public List<Usuario> findAll() {
		try {
			String sql = "SELECT *\r\n" + "FROM usuarios\r\n"
					+ "JOIN tematicas_atracciones ta ON ta.id_tematica = usuarios.id_tematica_preferida\r\n"
					+ "WHERE usuario_activo = 1\r\n" + "GROUP BY usuarios.id_usuario";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet resultados = statement.executeQuery();

			List<Usuario> listaUsuarios = new LinkedList<Usuario>();
			while (resultados.next()) {
				listaUsuarios.add(toUsuario(resultados));
			}
			return listaUsuarios;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public int updateUsuario(Usuario usuario) {
		try {
			String sql = "UPDATE usuarios SET username = ?, password = ?, nombre_usuario = ?, dinero_disponible = ?, tiempo_disponible = ?, id_tematica_preferida = ?, admin = ? WHERE id_usuario = ?";
			Connection conn = ConnectionProvider.getConnection();

			TipoAtraccionDAO tipoAtraccionDAO = DAOFactory.getTipoAtraccionDAO();
			
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, usuario.getUsername());
			statement.setString(2, usuario.getPassword());
			statement.setString(3, usuario.getNombre());
			statement.setDouble(4, usuario.getMonedasDisponibles());
			statement.setDouble(5, usuario.getTiempoDisponible());
			statement.setInt(6, tipoAtraccionDAO.encontrarId(usuario.getTematica()));
// ojo porque en la base no existe tipo de dato boolean
			statement.setBoolean(7, (usuario.esAdministrador()));
			statement.setInt(8, usuario.getId());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public Usuario buscarPorId(int id) {
		try {
			String sql = "SELECT * FROM usuarios WHERE id_usuario = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet resultados = statement.executeQuery();

			Usuario usuario = null;

			if (resultados.next()) {
				usuario = toUsuario(resultados);
			}
			return usuario;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public int agregarUsuario(ParqueAtracciones parque, String username, String password, String nombre, String tematica, double monedas, double tiempo, boolean admin) {
		try {
			Usuario usuario = new Usuario(username, password, nombre, tematica, monedas, tiempo, admin);
			parque.agregarUsuario(usuario);

			String sql = "INSERT INTO usuarios (username, password, nombre_usuario, dinero_disponible, tiempo_disponible, id_tematica_preferida, admin, usuario_activo) VALUES (?, ?, ?, ?, ?, ?, ?, 1)";
			Connection conn = ConnectionProvider.getConnection();

			TipoAtraccionDAO tipoAtraccionDAO = DAOFactory.getTipoAtraccionDAO();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, usuario.getUsername());
			statement.setString(2, usuario.getPassword());
			statement.setString(3, usuario.getNombre());
			statement.setDouble(4, usuario.getMonedasDisponibles());
			statement.setDouble(5, usuario.getTiempoDisponible());
			statement.setInt(6, tipoAtraccionDAO.encontrarId(usuario.getTematica()));
// ojo porque en la base no existe tipo de dato boolean
			statement.setBoolean(7, usuario.esAdministrador());
			
			int rows = statement.executeUpdate();
			
			ResultSet rs = statement.getGeneratedKeys();
			rs.next();
			usuario.setId(rs.getInt(1));

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public int eliminarUsuario(Usuario usuario, ParqueAtracciones parque) {
		try {
			String sql = "UPDATE usuarios SET usuario_activo = 0 WHERE id_usuario = ?";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, usuario.getId());
			int rows = statement.executeUpdate();

			parque.eliminarUsuario(usuario);

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

//	public int encontrarIdUsuario(Usuario usuario) {
//		try {
//			String sql = "SELECT * FROM usuarios WHERE nombre_usuario = ?";
//			Connection conn = ConnectionProvider.getConnection();
//			PreparedStatement statement = conn.prepareStatement(sql);
//			statement.setString(1, usuario.getNombre());
//			ResultSet resultados = statement.executeQuery();
//
//			int id = 0;
//
//			if (resultados.next()) {
//				id = resultados.getInt("id_usuario");
//			}
//			return id;
//		} catch (Exception e) {
//			throw new MissingDataException(e);
//		}
//	}

	public int obtenerUltimoIDUsuario() {
		try {
			String sql = "SELECT max(id_usuario AS 'id'\r\n" + "FROM usuarios";
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

	private Usuario toUsuario(ResultSet resultados) throws SQLException {

		int id = resultados.getInt("id_usuario");
		String username = resultados.getString("username");
		String password = resultados.getString("password");
		String nombre = resultados.getString("nombre_usuario");
		String tematica = resultados.getString("nombre_tematica");
		int dinero = resultados.getInt("dinero_disponible");
		double tiempo = resultados.getInt("tiempo_disponible");
// ojo porque en la base no existe tipo de dato boolean
		boolean admin = resultados.getBoolean("admin");
		Usuario usuario = new Usuario(id, username, password, nombre, tematica, dinero, tiempo, admin);
		return usuario;
	}
}
