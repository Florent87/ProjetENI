<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="fr.eni.ProjetENI.bo.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="fr.eni.ProjetENI.messages.LecteurMessage"%>
<%@page import="fr.eni.ProjetENI.BusinessException.BusinessException"%>


<!DOCTYPE html>
<html>
<link href="${pageContext.request.contextPath}/public/css/Index.css" rel="stylesheet" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des enchères</title>
</head>
<body>
<div>ENI-ENCHERES</div>
	<%
		Utilisateur membre = (Utilisateur)session.getAttribute("utilisateur");
		if(membre!=null)
		{
	%>
		<div id="header-user"><a href="${pageContext.request.contextPath}/deconnexion"> Se déconnecter</a></div>	
	<%	
		} else {
	%>	
		<div id="header-user"><a href="${pageContext.request.contextPath}/connexion"> S'inscrire-Se connecter</a></div>
	<%	
		} 
	%>


<h1>Liste des enchères</h1>

<%
		Utilisateur utilisateur = (Utilisateur)request.getAttribute("utilisateur");
		if(utilisateur!=null)
		{
	%>
			<p style="color:blue;">Votre profil a bien été enregistré dans notre base de donnée :</p>
			
	<%	
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

 <div class="form-label">
                <label for="fld-name">Filtres : </label>
                </div>
                <div class="form-field">
                    <input id="fld-name" type="text" class="fld-field" required="required" placeholder="le nom de l'article contient ?"/>
                </div>

<div class="form-label">
                <label for="fld-categorie">Catégories : </label>
                </div>
<div class="form-field">
                <select id="fld-categorie" size="1" class="fld-field">
			    <optgroup label="Toutes:">
				<option>Informatique</option>
				<option>Ameublement</option>
				<option>Vêtement</option>
				<option>Sport & Loisirs</option>
				<input type="submit">
				</select>
					
                </div>

</body>
</html>