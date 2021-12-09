package dao;

import java.util.List;

import model.Adquirible;
import model.Atraccion;
import model.ParqueAtracciones;
import model.TipoAtraccion;

public interface AtraccionDAO extends GenericDAO<Atraccion> {

	public List<Atraccion> findAll();
	
	public int agregarAtraccion(ParqueAtracciones parque, String nombre, TipoAtraccion tematica, double costo, double duracion, int cupoMaximo);
	
	public int updateAtraccion(Atraccion atraccion);
	
	public int eliminarAtraccion(ParqueAtracciones parque, Atraccion atraccion);

	public Atraccion buscarPorId(int id);

	public int encontrarIdAtraccion(Adquirible atraccion);
	
	public int obtenerUltimoIDAtraccion();
}