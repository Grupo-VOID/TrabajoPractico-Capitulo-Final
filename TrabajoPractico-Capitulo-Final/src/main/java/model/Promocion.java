package model;

public abstract class Promocion implements Adquirible {

	protected TipoAtraccion tematica;
	protected double costoTotal = 0;
	protected double duracionTotal = 0;

	public Promocion(TipoAtraccion tematica) {
		this.tematica = tematica;
	}

	public abstract double getCosto();

	public abstract double getTiempo();

	public abstract boolean estaDisponible();

	public abstract Atraccion[] atraccionesIncluidas();
	
	public abstract String getTipoPromocion();
	
	public abstract int getId();

	public String getNombre() {
		return "Pack " + this.tematica;
	}

	public TipoAtraccion getTematica() {
		return tematica;
	}

	public boolean esPromocion() {
		return true;
	}

	public void setCostoTotal(double costoTotal) {
		this.costoTotal = costoTotal;
	}

	public void setDuracionTotal(double duracionTotal) {
		this.duracionTotal = duracionTotal;
	}
}