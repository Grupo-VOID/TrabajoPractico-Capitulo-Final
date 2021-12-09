package dao;

import model.ParqueAtracciones;
import model.TipoAtraccion;
import model.Usuario;

public interface UsuarioDAO extends GenericDAO<Usuario> {
	
	public int updateUsuario(Usuario usuario);
	
	public int agregarUsuario(ParqueAtracciones parque, String username, String password, String nombre, TipoAtraccion tematica, double monedas, double tiempo, boolean admin);
	
	public int eliminarUsuario(Usuario usuario, ParqueAtracciones parque);
	
	public int obtenerUltimoIDUsuario();

//	public int encontrarIdUsuario(Usuario usuario);

}