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
<title>Page de connexion</title>
<style type="text/css">
label {
	width: 100px;
	display: inline-block;
}
</style>
</head>
<body>

	<%
		Utilisateur utilisateur = (Utilisateur)request.getAttribute("utilisateur");
		
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
			<h1>ENI-Enchères</h1>
		</header>
<<<<<<< HEAD
		<form action="connection" method="post">
			<label class=label>Pseudo: </label>
			<input type="text" name="name" value="<%=request.getParameter("pseudo")!=null?request.getParameter("pseudo"):""%>"required/> <br> 
=======
		<form action="ConnectionServlet" method="post">
			<label class=label>Identifiant: </label>
			<input type="text" name="pseudo" value="<%=listeCodesErreur!=null?request.getParameter("pseudo"):""%>"required/> <br> 
>>>>>>> branch 'main' of https://github.com/Florent87/ProjetENI.git
			<label>Mot de passe: </label> 
<<<<<<< HEAD
			<input type="password" name="password"  value="<%=request.getParameter("password")!=null?request.getParameter("password"):""%>"required/> <br> 
			<input type="submit" value="submit"> 
			<input type="checkbox"> 
=======
			<input type="password" name="password" value="<%=listeCodesErreur!=null?request.getParameter("password"):""%>"required/><br> <input type="submit" value="submit"> <input type="checkbox"> 
>>>>>>> branch 'main' of https://github.com/Florent87/ProjetENI.git
			<label>Se souvenir de moi</label> <a href="#">Mot de passe oublié</a>
		</form>
		<br> <br> <br>
<<<<<<< HEAD
		<button onclick="#">Créer un compte</button>
=======
		<button onclick="window.location.href='${pageContext.request.contextPath}/ServletAjoutProfil';">Créé un compte</button>
>>>>>>> branch 'main' of https://github.com/Florent87/ProjetENI.git
	</section>

</body>
</html>