package model;

public class TipoAtraccion {
	int id;
	String tematica;
	
	public TipoAtraccion(int id, String tematica) {
		this.id = id;
		this.tematica = tematica;
	}

	public String getTematica() {
		return tematica;
	}

	public void setTematica(String tematica) {
		this.tematica = tematica;
	}

	public int getId() {
		return id;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((tematica == null) ? 0 : tematica.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TipoAtraccion other = (TipoAtraccion) obj;
		if (id != other.id)
			return false;
		if (tematica == null) {
			if (other.tematica != null)
				return false;
		} else if (!tematica.equals(other.tematica))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return tematica;
	}

	
}
