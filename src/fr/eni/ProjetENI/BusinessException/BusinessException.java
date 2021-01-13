package fr.eni.ProjetENI.BusinessException;

import java.util.List;



public class BusinessException extends Exception {
	private static final long serialVersionUID = 1L;
	private List<Integer> listeCodesErreur;


	
	public BusinessException(String message) {
		super(message);
	}

	public BusinessException(String message, Throwable exception) {
		super(message, exception);
		
	}

	public BusinessException() {
		super();
	}

	public boolean hasErreurs() {
		return false;
	}

	public void ajouterErreur(int code) {
		if(!this.listeCodesErreur.contains(code))
		{
			this.listeCodesErreur.add(code);
		}
	}
	
	public List<Integer> getListeCodesErreur()
	{
		return this.listeCodesErreur;
	}

	
}
