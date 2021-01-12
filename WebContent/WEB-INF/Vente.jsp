<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="fr.eni.ProjetENI.bo.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="fr.eni.ProjetENI.messages.LecteurMessage"%>
<%@page import="fr.eni.ProjetENI.BusinessException.BusinessException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Création vente</title>
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
	<button onclick="window.location.href='${pageContext.request.contextPath}/SevletIndex';">Annuler</button>
</body>
</html>