package fr.eni.ProjetENI.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.ProjetENI.bll.UtilisateurManager;
import fr.eni.ProjetENI.bo.Utilisateur;

@WebServlet("/connexion")
public class ConnectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Connexion.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseudo, password;
		Utilisateur utilisateur = null;
		boolean connect;
		try {
			// Récupération des informations du formulaire de connexion
			pseudo = request.getParameter("pseudo");
			password = request.getParameter("password");
			connect = request.getParameterValues("connect") != null;
			
			// Vérification de l'utilisateur
			UtilisateurManager utilisateurManager = new UtilisateurManager();
			utilisateur = utilisateurManager.authentifier(pseudo, password);
		} catch (Exception e) {
			// TODO: handle exception
		}

		if (utilisateur != null) {
			
			// Si l'utilisateur est authentifié on le redirige vers la page d'accueil
			request.getSession().setAttribute("utilisateur", utilisateur);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Index.jsp");
			rd.forward(request, response);
			
		} else {
			
			// Si l'utilisateur n'est pas identifié il reste sur la page de connexion
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Connexion.jsp");
			rd.forward(request, response);
			
		}
	}

}
