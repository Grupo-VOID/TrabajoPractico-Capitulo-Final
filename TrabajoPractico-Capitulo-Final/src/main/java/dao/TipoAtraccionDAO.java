package dao;

import java.util.List;

public interface TipoAtraccionDAO extends GenericDAO<String> {

	public List<String> findAll();

	public int agregarTipoAtraccion(String nombre);

	public int eliminarTipoAtraccion(String nombre);

	public int encontrarId(String nombre);
}
