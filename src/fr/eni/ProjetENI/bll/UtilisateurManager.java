package fr.eni.ProjetENI.bll;

import fr.eni.ProjetENI.BusinessException.BusinessException;
import fr.eni.ProjetENI.bo.Utilisateur;
import fr.eni.ProjetENI.dal.DAOFactory;
import fr.eni.ProjetENI.dal.UtilisateurDAO;

public class UtilisateurManager {
	
	private UtilisateurDAO utilisateurDAO;

	public UtilisateurManager() {
		this.utilisateurDAO = DAOFactory.getUtilisateurDAO();
	}
	
	/**
	 * Ce Constructeur permet de connecter une communication avec la base de données
	 */
	public Utilisateur ajouter(String pseudo, String nom, String prenom, String email, String telephone, String rue, int codePostale, String ville, String motDePasse, String confirmation) 
			throws BusinessException {
	BusinessException exception = new BusinessException();
	
	Utilisateur utilisateur = new Utilisateur(pseudo, nom, prenom, email, telephone, rue, codePostale, ville, motDePasse, confirmation);
			
		this.validerPseudo(utilisateur, exception);
		this.validerNom(utilisateur, exception);
		this.validerPrenom(utilisateur, exception);
     	this.validerEmail(utilisateur, exception);
		this.validerTelephone(utilisateur, exception);
		this.validerRue(utilisateur, exception);
		this.validerCodePostal(utilisateur, exception);
		this.validerVille(utilisateur, exception);
		this.validerMotDePasse(utilisateur, exception);
		this.validerConfirmation(utilisateur, exception);
	
		
		
		if(!exception.hasErreurs())
		{
			this.utilisateurDAO.insert(utilisateur);
		}
		
		if(exception.hasErreurs())
		{
			throw exception;
		}
		return utilisateur;
	}
	
	/**
	 * Cette méthode permet de vérifier les règles à respecter sur la variable utlisateur.
	 * En cas d'erreur, le code d'erreur est enregistré dans l'objet businessException.
	 * @param utilisateur
	 * @param businessException 
	 */
	private void validerPrenom(Utilisateur utilisateur, BusinessException businessException) {
		if(utilisateur.getPrenom() == null || utilisateur.getPrenom().length()>150)
		{
			businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
		
	}
	
	private void validerNom(Utilisateur utilisateur, BusinessException businessException) {
		if(utilisateur.getNom() == null || utilisateur.getNom().length()>150)
		{
			businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
		
	}
    private void validerPseudo(Utilisateur utilisateur, BusinessException businessException)
	{
		if(utilisateur.getPseudo() == null || utilisateur.getPseudo().length()>150)
		{
			businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
	}

	private void validerEmail(Utilisateur utilisateur, BusinessException businessException)
	{
		if(utilisateur.getEmail() == null || utilisateur.getEmail().length()>150)
		{
			businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
	}
	
		 			
			
	private void validerRue(Utilisateur utilisateur, BusinessException businessException)
	{
		if(utilisateur.getRue() == null || utilisateur.getRue().length()>150)
		{businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
	}		
		
	private void validerTelephone(Utilisateur utilisateur, BusinessException businessException)
	
	{
		if((utilisateur.getTelephone()).length()!=10)
		{businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
		
	}
	
private void validerCodePostal(Utilisateur utilisateur, BusinessException businessException)
	
	{if(String.valueOf(utilisateur.getCodePostal()).length()!=5)
		
		{businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}	
	}
			
	private void validerVille(Utilisateur utilisateur, BusinessException businessException)
	{
		if(utilisateur.getVille() == null || utilisateur.getVille().length()>150)
		{
			businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
	}
	private void validerMotDePasse(Utilisateur utilisateur, BusinessException businessException)
	{
		if(utilisateur.getMotDePasse() == null || utilisateur.getMotDePasse().length()>150)
		{
			businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
	}
	private void validerConfirmation(Utilisateur utilisateur, BusinessException businessException)
	{
		if(utilisateur.getConfirmation() == null || utilisateur.getConfirmation().length()>150)
		{
			businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
	}

	
	public Utilisateur authentifier(String pseudo, String password) {
		// TODO recup�rer l'utilisateur par pseudo
		//this.utilisateurDAO.		
		return new Utilisateur("OmSim", "Simpson", "Omer", "omer.simpson@springfield.com", "0464571238", "Route nucl�aire", 83380, "Noname", "simpson", "simpson");
	}
	
}
