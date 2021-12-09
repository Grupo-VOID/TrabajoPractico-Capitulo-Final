package dao;

import model.Adquirible;
import model.Atraccion;
import model.ParqueAtracciones;
import model.Promocion;
import model.TipoAtraccion;

public interface PromocionDAO extends GenericDAO<Promocion> {

	public int agregarPromocion(ParqueAtracciones parque, String tipoPromocion, TipoAtraccion tematica, Atraccion atraccion1,
			Atraccion atraccion2, double parametro);
	
	public int eliminarPromocion(ParqueAtracciones parque, Promocion promocion);
	
	public int updatePromocion(Promocion promocion);
	
	public int obtenerUltimoIDPromocion();
	
	public Promocion buscarPorId(int id);

	public int encontrarIdPromocion(Adquirible promocion);
}