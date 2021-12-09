package model;

import java.io.IOException;
import java.sql.SQLException;
import java.util.LinkedList;

import dao.AtraccionDAO;
import dao.DAOFactory;
import dao.PromocionDAO;
import dao.TipoAtraccionDAO;
import dao.UsuarioDAO;

public class App {

	public static void main(String[] args) throws SQLException, IOException {
		TipoAtraccionDAO tipoatraccionesDAO = DAOFactory.getTipoAtraccionDAO();
		AtraccionDAO atraccionesDAO = DAOFactory.getAtraccionDAO();
		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
		PromocionDAO promocionesDAO = DAOFactory.getPromocionDAO();

		ParqueAtracciones parque = new ParqueAtracciones();
		parque.agregarListaTipoAtracciones(tipoatraccionesDAO.findAll());
		parque.agregarListaUsuarios(usuarioDAO.findAll());
		parque.agregarListaAtracciones(new LinkedList<Adquirible>(atraccionesDAO.findAll()));
		parque.agregarListaPromociones(new LinkedList<Adquirible>(promocionesDAO.findAll()));

		for (Usuario usuarios : parque.getUsuarios()) {
			usuarios.actualizarItinerario();
		}

		parque.cargarCatalogo();

		UI.eleccionDeMenu(parque);
	}

}