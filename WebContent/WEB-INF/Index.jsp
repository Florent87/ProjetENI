<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="fr.eni.ProjetENI.bo.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="fr.eni.ProjetENI.messages.LecteurMessage"%>
<%@page import="fr.eni.ProjetENI.BusinessException.BusinessException"%>


<!DOCTYPE html>
<html>
<link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/public/css/Index.css" rel="stylesheet" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des enchères</title>
</head>

<body>
<div id="header-ENI">ENI-ENCHERES</div>


	<%
		Utilisateur membre = (Utilisateur)session.getAttribute("utilisateur");
		if(membre!=null)
		{
	%>
	<div id="header-user">
			<ul>
				<li><a href="${pageContext.request.contextPath}/vente">Vendre un article</a></li>
				<li><a href="${pageContext.request.contextPath}/utilisateur">Mon profil</a></li>
				<li><a href="${pageContext.request.contextPath}/deconnexion">Déconnexion</a></li>
			</ul>
		</div>	
	<%	
		} else {
	%>	
		<li><a href="${pageContext.request.contextPath}/connexion"> S'inscrire-Se connecter</a></li>
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

 

<div class="mb-3">
    <label for="filtre" class="form-label">Filtres :</label>
    <input type="filtre" class="form-control" id="filtre" placeholder="le nom de l'article contient ?">
  </div>
</div>       
  <div class="input-group mb-3">
  <select class="form-select" id="inputGroupSelect02">
    <option selected>Catégorie: </option>
    <option value="1">Informatique</option>
    <option value="2">Vêtement</option>
    <option value="3">Ameublement</option>
    <option value="3">Sport & Loisirs</option>
  </select>
  <label class="input-group-text" for="inputGroupSelect02">Valider</label>
</div>
</div>
  
</div>
                

</body>
</html>