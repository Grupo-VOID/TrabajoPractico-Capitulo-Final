package model;

import java.util.LinkedList;
import java.util.List;

public class ParqueAtracciones {

	private List<Adquirible> atracciones, promociones;
	private LinkedList<Adquirible> catalogo = new LinkedList<Adquirible>();
	private List<Usuario> usuarios;

	public void agregarListaAtracciones(List<Adquirible> atracciones) {
		this.atracciones = atracciones;
	}

	public void agregarListaPromociones(List<Adquirible> promociones) {
		this.promociones = promociones;
	}

	public void agregarListaUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
	
	public void agregarUsuario(Usuario usuario) {
		this.usuarios.add(usuario);
	}
	
	public void eliminarUsuario(Usuario usuario) {
		this.usuarios.remove(usuario);
	}
	
	public void agregarAtraccion(Atraccion atraccion) {
		this.atracciones.add(atraccion);
	}
	
	public void eliminarAtraccion(Atraccion atraccion) {
		this.atracciones.remove(atraccion);
	}
	
	public void agregarPromocion(Promocion promocion) {
		this.promociones.add(promocion);
	}
	
	public void eliminarPromocion(Promocion promocion) {
		this.promociones.remove(promocion);
	}

	public void mostrarUsuarios() {
		int i;
		for (i = 0; i < this.usuarios.size(); i++) {
			System.out.print(i + 1 + ". " + this.usuarios.get(i).getNombre() + "\n");
		}
		System.out.println("\n");
		System.out.print(i + 1 + ". " + "Finalizar programa\n");
	}

	public void cargarCatalogo() {
		this.catalogo.addAll(this.promociones);
		this.catalogo.addAll(this.atracciones);
	}

	public Adquirible obtenerAtraccionPorNombre(String nombre) {
		for (Adquirible atraccion : atracciones) {
			if (atraccion.getNombre().equals(nombre)) {
				return atraccion;
			}
		}
		return null;
	}

	public List<Usuario> getUsuarios() {
		return this.usuarios;
	}

	public List<Adquirible> getAtracciones() {
		return this.atracciones;
	}

	public List<Adquirible> getPromociones() {
		return this.promociones;
	}

	public List<Adquirible> getCatalogo() {
		return catalogo;
	}
}