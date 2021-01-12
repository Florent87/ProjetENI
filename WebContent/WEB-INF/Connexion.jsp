<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="fr.eni.ProjetENI.bo.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="fr.eni.ProjetENI.messages.LecteurMessage"%>
<%@page import="fr.eni.ProjetENI.BusinessException.BusinessException"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/public/css/connexion.css" rel="stylesheet" />
<title>Page de connexion</title>

</style>
</head>
<body>
	<%
		Utilisateur membre = (Utilisateur)session.getAttribute("utilisateur");
		if(membre!=null)
		{
			// redirection vers la page d'accueil si aucun utilisateur en session
			getServletContext().getRequestDispatcher("/SevletIndex").forward(request, response);
		} 
	%>

	<%
	List<Integer> listeCodesErreur = (List<Integer>)request.getAttribute("listeCodesErreur");
		if(listeCodesErreur!=null)
		{
	%>
			<p style="color:red;">Erreur, votre profil n'a pas pu être enregistré dans notre base de donnée :</p>
	<%
			for(int codeErreur:listeCodesErreur)
			{
	%>
				<p><%=LecteurMessage.getMessageErreur(codeErreur)%></p>
	<%	
			}
		}
	%>
	<section class="">
		<header>
			<h1><a href="${pageContext.request.contextPath}/SevletIndex">ENI-Enchères</a></h1>
		</header>
		<form action="connexion" method="post">
			<label class=label>Pseudo: </label>
			<input type="text" name="name" value="<%=request.getParameter("pseudo")!=null?request.getParameter("pseudo"):""%>"required/> <br> 
			<label>Mot de passe: </label> 
			<input type="password" name="password"  value="<%=request.getParameter("password")!=null?request.getParameter("password"):""%>"required/> <br> 
			<input type="submit" value="submit"> 
			<input type="checkbox" name="connect"> 
			<label>Se souvenir de moi</label> <a href="#">Mot de passe oublié</a>
		</form>
		<br> <br> <br>
		<button onclick="window.location.href='${pageContext.request.contextPath}/ServletAjoutProfil';">Créér un compte</button>
	</section>

</body>
</html>