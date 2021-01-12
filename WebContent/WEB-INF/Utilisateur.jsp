<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="fr.eni.ProjetENI.bo.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="fr.eni.ProjetENI.messages.LecteurMessage"%>
<%@page import="fr.eni.ProjetENI.BusinessException.BusinessException"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/public/css/utilisateur.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
	<%
		Utilisateur membre = (Utilisateur)session.getAttribute("utilisateur");
		if(membre == null)
		{
			// redirection vers la page d'accueil si aucun utilisateur en session
			getServletContext().getRequestDispatcher("/SevletIndex").forward(request, response);
		} else {
	%>	
		<h1><a href="${pageContext.request.contextPath}/SevletIndex">ENI-Enchères</a></h1>
		<div><label>Pseudo:</label><label class="data"><%= membre.getPseudo() %></label></div>
		<div><label>Nom</label><label class="data"><%= membre.getNom() %></label></div>
		<div><label>Prénom:</label><label class="data"><%= membre.getPrenom() %></label></div>
		<div><label>Email:</label><label class="data"><%= membre.getEmail() %></label></div>
		<div><label>Téléphone:</label><label class="data"><%= membre.getTelephone() %></label></div>
		<div><label>Rue:</label><label class="data"><%= membre.getRue() %></label></div>
		<div><label>Code postal:</label><label class="data"><%= membre.getCodePostal() %></label></div>
		<div><label>Ville:</label><label class="data"><%= membre.getVille() %></label></div>
	<% } %>	
	<button onclick="window.location.href='${pageContext.request.contextPath}/ServletAjoutProfil';">Modifier</button>
</body>
</html>