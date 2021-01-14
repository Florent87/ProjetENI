package fr.eni.ProjetENI.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import fr.eni.ProjetENI.BusinessException.BusinessException;
import fr.eni.ProjetENI.bo.Utilisateur;

public class UtilisateurDAOJdbcImpl implements UtilisateurDAO {
	private static final String INSERT = "INSERT INTO UTILISATEURS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    //private static final String UPDATE = "UPDATE UTILISATEURS SET nom = ?, prenom = ? WHERE no_utilisateur = ?"; // A MODIFIER
    private static final String GET_BY_ID = "SELECT * FROM UTILISATEURS WHERE no_utilisateur = ?";
    private static final String GET_ALL = "SELECT * FROM UTILISATEURS";
    private static final String DELETE = "DELETE FROM UTILISATEURS WHERE no_utilisateur = ?";
    private static final String GET_UTILISATEUR = "SELECT * FROM UTILISATEURS WHERE pseudo = ? AND mot_de_passe = ? ";
    // Ajout d'un nouvel utilisateur
	@Override
	public void insert(Utilisateur utilisateur) throws BusinessException {

		try (Connection connection = ConnectionProvider.getConnection()){	// R�cup�re une connexion
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT, PreparedStatement.RETURN_GENERATED_KEYS);
			preparedStatement.setString(1, utilisateur.getPseudo());
			preparedStatement.setString(2, utilisateur.getNom());
			preparedStatement.setString(3, utilisateur.getPrenom());
			preparedStatement.setString(4, utilisateur.getEmail());
			preparedStatement.setString(5, utilisateur.getTelephone());
			preparedStatement.setString(6, utilisateur.getRue());
			preparedStatement.setString(7, String.valueOf(utilisateur.getCodePostal()));
			preparedStatement.setString(8, utilisateur.getVille());
			preparedStatement.setString(9, utilisateur.getMotDePasse());
			preparedStatement.setInt(10, utilisateur.getCredit());
			preparedStatement.setString(11, "0");
			preparedStatement.executeUpdate();
			ResultSet rs = preparedStatement.getGeneratedKeys();
			if(rs.next())
			{utilisateur.setNoUtilisateur(rs.getInt(1));
		} 
			
		}catch(Exception e) {
			e.printStackTrace();
			BusinessException businessException = new BusinessException("insert impossible");
			throw businessException;
		}
		
	}

	// R�cup�ration d'un utilisateur avec son identifiant
	@Override
	public Utilisateur getById(int noUtilisateur) throws BusinessException {
		
		Utilisateur utilisateur = null;

		try (Connection connection = ConnectionProvider.getConnection()){
			PreparedStatement preparedStatement = connection.prepareStatement(GET_BY_ID);
			preparedStatement.setInt(1, noUtilisateur);
			ResultSet response = preparedStatement.executeQuery();
			
			if(response.next()) {
				utilisateur = new Utilisateur();
				utilisateur.setNoUtilisateur(response.getInt("no_utilisateur"));
				utilisateur.setPseudo(response.getString("pseudo"));
				utilisateur.setNom(response.getString("nom"));
				utilisateur.setPrenom(response.getString("prenom"));
				utilisateur.setEmail(response.getString("email"));
				utilisateur.setTelephone(response.getString("telephone"));
				utilisateur.setRue(response.getString("rue"));
				utilisateur.setCodePostal(response.getInt("code_postal"));
				utilisateur.setVille(response.getString("ville"));
				utilisateur.setMotDePasse(response.getString("mot_de_passe"));
				utilisateur.setCredit(response.getInt("credit"));
				utilisateur.setAdministrateur(response.getString("administrateur"));
			}
		
		} catch (Exception e) {
			e.printStackTrace();
			BusinessException businessException = new BusinessException("Erreur création utilisateur");
			throw businessException;
		}
		return utilisateur;
	}

	@Override
	public Utilisateur authentifier(String pseudo, String motDePasse)throws BusinessException {
		Utilisateur utilisateur = null;
		
		try (Connection connection = ConnectionProvider.getConnection()){
			PreparedStatement preparedStatement = connection.prepareStatement(GET_UTILISATEUR);
			preparedStatement.setString(1, pseudo);
			preparedStatement.setString(2, motDePasse);
			
			ResultSet response = preparedStatement.executeQuery();
			
			if(response.next()) {
				utilisateur = new Utilisateur();
				utilisateur.setNoUtilisateur(response.getInt("no_utilisateur"));
				utilisateur.setPseudo(response.getString("pseudo"));
				utilisateur.setNom(response.getString("nom"));
				utilisateur.setPrenom(response.getString("prenom"));
				utilisateur.setEmail(response.getString("email"));
				utilisateur.setTelephone(response.getString("telephone"));
				utilisateur.setRue(response.getString("rue"));
				utilisateur.setCodePostal(response.getInt("code_postal"));
				utilisateur.setVille(response.getString("ville"));
				utilisateur.setMotDePasse(response.getString("mot_de_passe"));
				utilisateur.setCredit(response.getInt("credit"));
				utilisateur.setAdministrateur(response.getString("administrateur"));
			}
		
		} catch (Exception e) {
			e.printStackTrace();
			BusinessException businessException = new BusinessException("Erreur authentification utilisateur");
			throw businessException;
		}
		return utilisateur;
	}

		
}
