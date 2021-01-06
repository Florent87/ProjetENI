package fr.eni.ProjetENI.bll;

import fr.eni.ProjetENI.bo.Utilisateur;
import fr.eni.ProjetENI.dal.DAOFactory;
import fr.eni.ProjetENI.dal.UtilisateurDAO;

public class utilisateurManager {
	
	private UtilisateurDAO utilisateurDAO;

	public utilisateurManager(UtilisateurDAO utilisateurDAO) {
		super();
		this.utilisateurDAO = DAOFactory.getUtilisateurDAO();
	}
	
	/**
	 * Ce Constructeur permet de connecter une communication avec la base de données
	 */
	public Utilisateur ajouter(String pseudo, String nom, String prenom, String email, int telephone, String rue, int codePostale, String ville, String motDePasse, String confirmation) 
			throws BusinessException {
	BusinessException exception = new BusinessException();
	
	Utilisateur utilisateur = new Utilisateur(pseudo, nom, prenom, email, telephone, rue, codePostale, ville, motDePasse, confirmation);
	Pseudo pseudo = new Pseudo (String);
			
		this.validerPseudo(utilisateur, exception);
		this.validerNom(utilisateur, exception);
		this.validerPrenom(utilisateur, exception);
		this.validerEmail(utilisateur, exception);
		this.validerTelephone(utilisateur, exception);
		this.validerRue(utilisateur, exception);
		this.validerCodePostale(utilisateur, exception);
		this.validerVille(utilisateur, exception);
		this.validerMotDePasse(utilisateur, exception);
		this.validerConfirmation(utilisateur, exception);
		
		if(!exception.hasErreurs())
		{
			this.utilisateurDAO.insert(pseudo);
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
	
	private void validerUtilisateur(Utilisateur utilisateur, BusinessException businessException)
	{
		if(utilisateur.getUtilisateur()==null || utilisateur.getUtilisateur().length()>150)
		{
			businessException.ajouterErreur(CodesResultatBLL.REGLE_UTILISATEUR_DESCRIPTION_ERREUR);
		}
	}

