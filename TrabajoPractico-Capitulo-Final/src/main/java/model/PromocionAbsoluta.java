package model;

import dao.AtraccionDAO;
import dao.DAOFactory;

public class PromocionAbsoluta extends Promocion {

	private int id;
	private double descuento = 0;
	private Atraccion atraccionUno;
	private Atraccion atraccionDos;

	public PromocionAbsoluta(int id, TipoAtraccion tematica, Atraccion atraccion1, Atraccion atraccion2, double descuento) {
		super(tematica);
		this.id = id;
		this.atraccionUno = atraccion1;
		this.atraccionDos = atraccion2;
		this.descuento = descuento;
	}

	@Override
	public double getCosto() {
		this.costoTotal = this.atraccionUno.getCosto() + this.atraccionDos.getCosto() - descuento;
		return this.costoTotal;
	}

	@Override
	public double getTiempo() {
		this.duracionTotal = atraccionUno.getTiempo() + atraccionDos.getTiempo();
		return duracionTotal;
	}

	@Override
	public boolean estaDisponible() {
		return (this.atraccionUno.estaDisponible() && this.atraccionDos.estaDisponible());
	}

	@Override
	public Atraccion[] atraccionesIncluidas() {
		Atraccion[] atracciones = { this.atraccionUno, this.atraccionDos };
		return atracciones;
	}

	public void comprar() {
		this.atraccionUno.comprar();
		this.atraccionDos.comprar();

		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		atraccionDAO.updateAtraccion(atraccionUno);
		atraccionDAO.updateAtraccion(atraccionDos);
	}

	@Override
	public String toString() {
		return (this.getNombre() + ": Si compra la atraccion " + this.atraccionUno.getNombre() 
			+ " y la atraccion " + this.atraccionDos.getNombre() 
			+ ", obtiene un descuento de $" + this.descuento
			+ " sobre el costo total." + "\n Tematica: " + this.getTematica() 
			+ "\n Costo Total= $"+ this.getCosto() 
			+ "\n Duracion Total= " + this.getTiempo() + " horas");
		}

	public String getTipoPromocion() {
		return "ABSOLUTA";
	}

	public double getDescuento() {
		return descuento;
	}

	public int getId() {
		return id;
	}

	public void setDescuento(double descuento) {
		this.descuento = descuento;
	}

	// ojo si se setea atracciones incluidas y el cliente ya tenia comprada esa atracción puede dar error en la base
	public void setAtraccionesIncluidas(Atraccion atraccionUno, Atraccion atraccionDos) {
		this.atraccionUno = atraccionUno;
		this.atraccionDos = atraccionDos;
	}
}