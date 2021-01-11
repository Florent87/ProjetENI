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
<title>Page de connection</title>
<link href="${pageContext.request.contextPath}/META-INF/public/css/index.css" rel="stylesheet" />
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
		<form action="ConnectionServlet" method="post">
			<label class=label>Identifiant: </label>
			<input type="text" name="pseudo" value="<%=listeCodesErreur!=null?request.getParameter("pseudo"):""%>"required/> <br> 
			<label>Mot de passe: </label> 
			<input type="password" name="password" value="<%=listeCodesErreur!=null?request.getParameter("password"):""%>"required/><br> <input type="submit" value="submit"> <input type="checkbox"> 
			<label>Se souvenir de moi</label> <a href="#">Mot de passe oublié</a>
		</form>
		<br> <br> <br>
		<button onclick="window.location.href='${pageContext.request.contextPath}/ServletAjoutProfil';">Créé un compte</button>
	</section>

</body>
</html>