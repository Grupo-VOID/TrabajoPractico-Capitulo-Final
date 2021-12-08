package model;

import java.util.ArrayList;

import dao.DAOFactory;
import dao.UsuarioDAO;
import utils.Crypt;

public class Usuario {

	private int id;
	private String username;
	private String password;
	private String nombre;
	private String tematicaFavorita;
//	private double monedasIniciales;
	private double monedasDisponibles;
//	private double tiempoInicial;
	private double tiempoDisponible;
	private boolean admin;
	protected Itinerario itinerarioUsuario;
	private ArrayList<Atraccion> listaAtracciones = new ArrayList<Atraccion>();

	// USUARIO DE LA BASE DE DATOS
	public Usuario(int id, String username, String password, String nombre, String tematica, double monedas, double tiempo, boolean admin) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.nombre = nombre;
		this.tematicaFavorita = tematica;
	//	this.monedasIniciales = monedas;
		this.monedasDisponibles = monedas;
	//	this.tiempoInicial = tiempo;
		this.tiempoDisponible = tiempo;
		this.admin = admin;
		this.itinerarioUsuario = new Itinerario();
	}
	
	//USUARIO POR PRIMERA VEZ
	public Usuario(String username, String password, String nombre, String tematica, double monedas, double tiempo, boolean admin) {
		this.id = 0;
		this.username = username;
		this.password = Crypt.hash(password);
		this.nombre = nombre;
		this.tematicaFavorita = tematica;
		this.monedasDisponibles = monedas;
		this.tiempoDisponible = tiempo;
		this.admin = admin;
		this.itinerarioUsuario = new Itinerario();
	}

	public String getNombre() {
		return nombre;
	}

	public int getId() {
		return id;
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
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}

	public ArrayList<Atraccion> getListaAtracciones() {
		return listaAtracciones;
	}
	
	public void actualizarItinerario() {
		for (Adquirible i : itinerarioUsuario.agregarAdquiriblesComprados(this)) {
			if (i.esPromocion()) {
				for (Atraccion atraccion : i.atraccionesIncluidas()) {
					listaAtracciones.add((Atraccion) atraccion);
				}
			} else {
				listaAtracciones.add((Atraccion) i);
			}
		}
	}

//	public double monedasUtilizadas() {
//		return this.monedasIniciales - this.monedasDisponibles;
//	}

	public void aceptarSugerencia(Adquirible sugerencia) {
		this.monedasDisponibles -= sugerencia.getCosto();
		this.tiempoDisponible -= sugerencia.getTiempo();
		this.itinerarioUsuario.agregarAdquirible(sugerencia, this);
		for (Atraccion i : sugerencia.atraccionesIncluidas()) {
			listaAtracciones.add(i);
		}
		sugerencia.comprar();

		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
		usuarioDAO.updateUsuario(this);
	}

//	public double getMonedasIniciales() {
//		return monedasIniciales;
//	}
//
//	public double getTiempoInicial() {
//		return tiempoInicial;
//	}

	@Override
	public String toString() {
		return this.nombre + this.tiempoDisponible;
	}
	
	public boolean esAdministrador() {
		return this.admin;
	}
	
	public boolean checkPassword(String password) {
		// this.password en realidad es el hash del password
		return Crypt.match(password, this.password);
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setTematicaFavorita(String tematicaFavorita) {
		this.tematicaFavorita = tematicaFavorita;
	}

	public void setMonedasDisponibles(double monedasDisponibles) {
		this.monedasDisponibles = monedasDisponibles;
	}

	public void setTiempoDisponible(double tiempoDisponible) {
		this.tiempoDisponible = tiempoDisponible;
	}
	
	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setPassword(String password) {
		this.password = Crypt.hash(password);
	}
	
	public void setId(int id) {
		if(this.id == 0) {
			this.id = id;
		}
	}
}