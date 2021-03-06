package fr.eni.ProjetENI.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.ProjetENI.BusinessException.BusinessException;
import fr.eni.ProjetENI.bll.UtilisateurManager;
import fr.eni.ProjetENI.bo.Utilisateur;


/**
 * Servlet implementation class ServletAjoutProfil
 */
@WebServlet("/ServletAjoutProfil")
public class ServletAjoutProfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/profil.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pseudo;
		String nom;
		String prenom;
		String email;
		String telephone;
		String rue;
		int codePostale;
		String ville;
		String motDePasse;
		String confirmation;
		
		try
		{
			pseudo = request.getParameter("pseudo");
			nom = request.getParameter("nom");
			prenom = request.getParameter("prenom");
			email = request.getParameter("email");
			telephone= request.getParameter("telephone");
			rue = request.getParameter("rue");
			codePostale= Integer.parseInt(request.getParameter("codePostal"));
			ville = request.getParameter("ville");
			motDePasse = request.getParameter("motDePasse");
			confirmation = request.getParameter("confirmation");
			
		
			UtilisateurManager utilisateurManager = new UtilisateurManager();
		
			
			if (utilisateurManager.verifierUnicite(pseudo, email) == true) {
					throw new BusinessException("Le pseudo ou l'email existe déjà");		    
	 }
		    else {  				
			Utilisateur utilisateur = new Utilisateur(pseudo, nom, prenom, email, telephone, rue, codePostale, ville, motDePasse, confirmation);
			utilisateurManager.ajouter(pseudo, nom, prenom, email, telephone, rue, codePostale, ville, motDePasse, confirmation);
			request.setAttribute("utilisateur", utilisateur);
			
		    }
		}
		catch(NumberFormatException e)
		{
			e.printStackTrace();
			List<Integer> listeCodesErreur=new ArrayList<>();
			listeCodesErreur.add(ServletCodesResultat.FORMAT_CODE_POSTAL_TELEPHONE_ERREUR);
			request.setAttribute("listeCodesErreur",listeCodesErreur);
			
		} catch (BusinessException e) {
			request.setAttribute("listeCodesErreur", e.getListeCodesErreur());
		}
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/index.jsp");
		rd.forward(request, response);
		
	}

	
}
