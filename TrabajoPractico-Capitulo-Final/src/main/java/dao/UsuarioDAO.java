package dao;

import model.ParqueAtracciones;
import model.Usuario;

public interface UsuarioDAO extends GenericDAO<Usuario> {
	
	public int updateUsuario(Usuario usuario);

	public Usuario buscarPorId(int id);
	
	public int agregarUsuario(ParqueAtracciones parque, String nombre, String tematica, double monedas, double tiempo);
	
	public int eliminarUsuario(Usuario usuario, ParqueAtracciones parque);
	
	public int obtenerUltimoIDUsuario();

//	public int encontrarIdUsuario(Usuario usuario);

}