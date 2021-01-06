package fr.eni.ProjetENI.dal;

import fr.eni.ProjetENI.BusinessException.BusinessException;
import fr.eni.ProjetENI.bo.Utilisateur;

public interface UtilisateurDAO {
	public void insert (Utilisateur utilisateur) throws BusinessException;
}
