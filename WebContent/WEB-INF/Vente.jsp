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
<title>Création d'une vente</title>
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
	<% } %>
	<h2>Nouvelle vente</h2>
	<img src="${pageContext.request.contextPath}/public/image/under-construction.gif" alt="site en travaux">
	<button onclick="window.location.href='${pageContext.request.contextPath}/SevletIndex';">Annuler</button>
</body>
</html>