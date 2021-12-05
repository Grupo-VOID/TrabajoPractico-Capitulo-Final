package model;

import dao.AtraccionDAO;
import dao.DAOFactory;
import model.Atraccion;

public class Atraccion implements Adquirible {

	private final int ID;
	private String nombre;
	private String tematica;
	private double costo;
	private double duracion;
	private int cupoMaximo;
	private int lugaresOcupados = 0;

	public Atraccion(int id, String nombre, String tematica, double costo, double duracion, int cupoMaximo) {
		this.ID = id;
		this.nombre = nombre;
		this.tematica = tematica;
		this.costo = costo;
		this.duracion = duracion;
		this.cupoMaximo = cupoMaximo;
	}

	public double getCosto() {
		return costo;
	}

	public double getTiempo() {
		return duracion;
	}
	
	public int getID() {
		return ID;
	}
	
	public String getTematica() {
		return tematica;
	}

	public int getCupoActual() {
		return lugaresOcupados;
	}

	public int getCupoMaximo() {
		return cupoMaximo;
	}

	public String getNombre() {
		return nombre;
	}

	public boolean estaDisponible() {
		return lugaresOcupados < cupoMaximo;
	}

	public void comprar() {
		lugaresOcupados++;
		
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionesDAO();
		atraccionDAO.updateAtraccion(this);
	}

	public Atraccion[] atraccionesIncluidas() {
		Atraccion[] nombre = { this };
		return nombre;
	}

	public boolean esPromocion() {
		return false;
	}

	@Override
	public String toString() {
		return String.format("Atraccion: " + this.nombre 
				+ ". Tematica: " + this.getTematica()
				+ "\n Costo Total= $" + this.getCosto()
				+ "\n Duracion Total= " + this.getTiempo() + " horas");
	}
}