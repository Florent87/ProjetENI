package fr.eni.ProjetENI.bo;

public class Retrait {
	
	private String rue;
	private int codePostal;
	private String Ville;
	
	public Retrait() {
	}
	
	public Retrait(String rue, int codePostal, String ville) {
		this.rue = rue;
		this.codePostal = codePostal;
		this.Ville = ville;
	}


	public String getRue() {
		return rue;
	}

	public void setRue(String rue) {
		this.rue = rue;
	}

	public int getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(int codePostal) {
		this.codePostal = codePostal;
	}

	public String getVille() {
		return Ville;
	}

	public void setVille(String ville) {
		Ville = ville;
	}

	@Override
	public String toString() {
		return "Retrait [rue=" + rue + ", codePostal=" + codePostal + ", Ville=" + Ville + "]";
	}

	
}



