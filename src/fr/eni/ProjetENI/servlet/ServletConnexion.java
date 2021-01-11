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
import javax.servlet.http.HttpSession;

import fr.eni.ProjetENI.BusinessException.BusinessException;
import fr.eni.ProjetENI.bll.UtilisateurManager;
import fr.eni.ProjetENI.bo.Utilisateur;


@WebServlet("/ServletConnexion")
public class ServletConnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Connexion.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseudo;
		String motDePasse;
		

			pseudo = request.getParameter("pseudo");
			motDePasse = request.getParameter("motDePasse");
			
			
			
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Index.jsp");
		rd.forward(request, response);
	}
}

	
				

