package fr.eni.ProjetENI.bo;

import java.time.LocalDate;


public class Encheres {
	
	public LocalDate dateEnchere;
	public int montantEnchere;
	
	
	public Encheres(LocalDate dateEnchere, int montantEnchere) {
		super();
		this.dateEnchere = dateEnchere;
		this.montantEnchere = montantEnchere;
	}
	
	
	
	public LocalDate getDateEnchere() {
		return dateEnchere;
	}
	
	public void setDateEnchere(LocalDate dateEnchere) {
		this.dateEnchere = dateEnchere;
	}
	
	public int getMontantEnchere() {
		return montantEnchere;
	}
	
	public void setMontantEnchere(int montantEnchere) {
		this.montantEnchere = montantEnchere;
	}
	
	@Override
	public String toString() {
		return "Encheres [dateEnchere=" + dateEnchere + ", montantEnchere=" + montantEnchere + "]";
	}
}
