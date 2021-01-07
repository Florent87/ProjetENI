package fr.eni.ProjetENI.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;

import fr.eni.ProjetENI.BusinessException.BusinessException;
import fr.eni.ProjetENI.bo.Utilisateur;

public class UtilisateurDAOJdbcImpl implements UtilisateurDAO {
	private static final String INSERT = "INSERT INTO UTILISATEURS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String UPDATE = "UPDATE UTILISATEURS SET nom = ?, prenom = ? WHERE no_utilisateur = ?";
    private static final String GET_BY_ID = "SELECT * FROM UTILISATEURS WHERE no_utilisateur = ?";
    private static final String GET_ALL = "SELECT * FROM UTILISATEURS";
    private static final String DELETE = "DELETE FROM UTILISATEURS WHERE no_utilisateur = ?";
    
	@Override
	public void insert(Utilisateur utilisateur) throws BusinessException {

		System.out.println("Before insert");
		try (Connection connection = ConnectionProvider.getConnection()){
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
			preparedStatement.setString(1, utilisateur.getPseudo());
			preparedStatement.setString(2, utilisateur.getNom());
			preparedStatement.setString(3, utilisateur.getPrenom());
			preparedStatement.setString(4, utilisateur.getEmail());
			preparedStatement.setString(5, String.valueOf(utilisateur.getTelephone()));
			preparedStatement.setString(6, utilisateur.getRue());
			preparedStatement.setString(7, String.valueOf(utilisateur.getCodePostal()));
			preparedStatement.setString(8, utilisateur.getVille());
			preparedStatement.setString(9, utilisateur.getMotDePasse());
			preparedStatement.setInt(10, utilisateur.getCredit());
			preparedStatement.setString(11, "0");
			preparedStatement.executeUpdate();
			System.out.println("Insert completed");
		} catch(Exception e) {
			e.printStackTrace();
			BusinessException businessException = new BusinessException();
			throw businessException;
		}
		
	}
}
