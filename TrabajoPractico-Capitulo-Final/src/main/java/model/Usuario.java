package model;

import java.util.ArrayList;

import dao.DAOFactory;
import dao.ItinerarioDAO;
import dao.UsuarioDAO;

public class Usuario {

	private final int ID;
	private String nombre;
	private String tematicaFavorita;
	private double monedasIniciales;
	private double monedasDisponibles;
	private double tiempoInicial;
	private double tiempoDisponible;
	protected Itinerario itinerarioUsuario;
	private ArrayList<Atraccion> listaAtracciones = new ArrayList<Atraccion>();

	public Usuario(int id, String nombre, String tematica, double monedas, double tiempo) {
		this.ID = id;
		this.nombre = nombre;
		this.tematicaFavorita = tematica;
		this.monedasIniciales = monedas;
		this.monedasDisponibles = monedas;
		this.tiempoInicial = tiempo;
		this.tiempoDisponible = tiempoInicial;
		this.itinerarioUsuario = new Itinerario();
	}

	public String getNombre() {
		return nombre;
	}

	public int getID() {
		return ID;
	}

	public String getTematica() {
		return tematicaFavorita;
	}

	public double getMonedasDisponibles() {
		return monedasDisponibles;
	}

	public double getTiempoDisponible() {
		return tiempoDisponible;
	}

	public ArrayList<Atraccion> getListaAtracciones() {
		ItinerarioDAO itinerarioDAO = DAOFactory.getItinerarioDAO();
		listaAtracciones = (ArrayList<Atraccion>) itinerarioDAO.atraccionesUsuario(this.getID());

		return listaAtracciones;
	}

	public double monedasUtilizadas() {
		return this.monedasIniciales - this.monedasDisponibles;
	}

	public void aceptarSugerencia(Adquirible sugerencia) {
		this.monedasDisponibles -= sugerencia.getCosto();
		this.tiempoDisponible -= sugerencia.getTiempo();
		this.itinerarioUsuario.agregarAdquirible(sugerencia, this);
//		for (Atraccion i : sugerencia.atraccionesIncluidas()) {
//			listaAtracciones.add(i);
//		}
		sugerencia.comprar();

		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
		usuarioDAO.updateUsuario(this);
	}

	public double getMonedasIniciales() {
		return monedasIniciales;
	}

	public double getTiempoInicial() {
		return tiempoInicial;
	}

	@Override
	public String toString() {
		return this.nombre + this.tiempoDisponible;
	}
}