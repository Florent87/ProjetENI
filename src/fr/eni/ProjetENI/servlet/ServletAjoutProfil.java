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


/**
 * Servlet implementation class ServletAjoutProfil
 */
@WebServlet("/ServletAjoutProfil")
public class ServletAjoutProfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAjoutProfil() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/Profil.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		String pseudo;
		String nom;
		String prenom;
		String email;
		int telephone;
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
			telephone= Integer.parseInt(request.getParameter("telephone"));
			rue = request.getParameter("rue");
			codePostale= Integer.parseInt(request.getParameter("codePostale"));
			ville = request.getParameter("ville");
			motDePasse = request.getParameter("motDePasse");
			confirmation = request.getParameter("confirmation");
			
			AvisManager avisManager = new AvisManager();
			Avis avis = avisManager.ajouter(description, note);
			request.setAttribute("avis", avis);
		}
		catch(NumberFormatException e)
		{
			List<Integer> listeCodesErreur=new ArrayList<>();
			listeCodesErreur.add(CodesResultatServlets.FORMAT_AVIS_NOTE_ERREUR);
			request.setAttribute("listeCodesErreur",listeCodesErreur);
		} catch (BusinessException e) {
			request.setAttribute("listeCodesErreur", e.getListeCodesErreur());
		}
		
	}

	
}
