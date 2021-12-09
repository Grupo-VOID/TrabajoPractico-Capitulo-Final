package dao;

import java.util.List;

import model.ParqueAtracciones;
import model.TipoAtraccion;

public interface TipoAtraccionDAO extends GenericDAO<TipoAtraccion> {

	public List<TipoAtraccion> findAll();

	public int agregarTipoAtraccion(ParqueAtracciones parque, String tematica);

	public int updateTipoAtraccion(TipoAtraccion tipoAtraccion);
	
	public int eliminarTipoAtraccion(ParqueAtracciones parque, TipoAtraccion tipoAtraccion);

	public TipoAtraccion encontrarTipoAtraccion(String nombre);
}
