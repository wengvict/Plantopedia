package com.finalproject.PlantApp.trefle.pojos;

public class Planting_density_maximum {
	private Double sqm;
	private Double acre;
	
	public Double getSqm() {
		return sqm;
	}
	public void setSqm(Double sqm) {
		this.sqm = sqm;
	}
	public Double getAcre() {
		return acre;
	}
	public void setAcre(Double acre) {
		this.acre = acre;
	}
	public Planting_density_maximum(Double sqm, Double acre) {
		super();
		this.sqm = sqm;
		this.acre = acre;
	}
	public Planting_density_maximum() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Planting_density_maximum [sqm=" + sqm + ", acre=" + acre + "]";
	}
}
