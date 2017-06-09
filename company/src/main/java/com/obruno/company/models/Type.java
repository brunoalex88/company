package com.obruno.company.models;

public enum Type {
	MOBILE("Mobile"), 
	DESKTOP("Desktop"), 
	NOTEBOOK("Notebook"), 
	LAPTOP("Laptop");
	
	Type(String tipo) {
		this.tipo = tipo;
	}
	
	private final String tipo;
	
	public String getTipo() {
		return tipo;
	}
	
}
