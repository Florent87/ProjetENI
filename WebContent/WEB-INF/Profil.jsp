<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="fr.eni.ProjetENI.bo.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="fr.eni.ProjetENI.messages.LecteurMessage"%>
<%@page import="fr.eni.ProjetENI.BusinessException.BusinessException"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mon profil</title>
</head>
<div>ENI-ENCHERES</div>

<body>

<%
		Utilisateur utilisateur = (Utilisateur)request.getAttribute("utilisateur");
		if(utilisateur!=null)
		{
	%>
			<p style="color:blue;">Votre profil a bien été enregistré a été ajouté avec succès :</p>
			<p><%=utilisateur %></p>
	<%	
		} 
	%>
	
	<%
	List<Integer> listeCodesErreur = (List<Integer>)request.getAttribute("listeCodesErreur");
		if(listeCodesErreur!=null)
		{
	%>
			<p style="color:red;">Erreur, votre profil n'apas pu être enregistré dans notre base de donnée :</p>
	<%
			for(int codeErreur:listeCodesErreur)
			{
	%>
				<p><%=LecteurMessage.getMessageErreur(codeErreur)%></p>
	<%	
			}
		}
	%>




<h1>Mon profil</h1>

<form name="profil" action="<%=request.getContextPath()%>/ServletAjoutProfil" method="post">

	<p>
		<div> 
			<label for="pseudo">Pseudo :</label>
			<input type="text" name="pseudo" id="pseudo" value="<%=listeCodesErreur!=null?request.getParameter("pseudo"):""%>"required/>
			<label for="nom">Nom :</label>
			<input type="text" name="nom" id="nom" value="<%=listeCodesErreur!=null?request.getParameter("nom"):""%>"required/>
		</div>
	</p>
	
	<p>
		<div>
			<label for="prenom">Prénom :</label>
			<input type="text" name="prenom" id="prenom" value="<%=listeCodesErreur!=null?request.getParameter("prenom"):""%>"required/>
			<label for="email">E-mail :</label>
			<input type="email" name="email" id="email" value="<%=listeCodesErreur!=null?request.getParameter("email"):""%>"required/>
		</div>
	</p>
	
	<p>
		<div>
			<label for="telephone">Téléphone :</label>
			<input type="tel" name="telephone" id="telephone" required value="<%=listeCodesErreur!=null?request.getParameter("telephone"):""%>"required/>

			<label for="rue">Rue :</label>
			<input type="text" name="rue" id="rue" required value="<%=listeCodesErreur!=null?request.getParameter("rue"):""%>"required/>
		</div>
	</p>
	
	<p>
		<div>
			<label for="codePostal">Code postal :</label>
			<input type="number" name="codePostal" id="codePostal" value="<%=listeCodesErreur!=null?request.getParameter("codePostal"):""%>"required/>

			<label for="ville">Ville :</label>
			<input type="text" name="ville" id="ville" value="<%=listeCodesErreur!=null?request.getParameter("ville"):""%>"required/>
		</div>
	</p>
	
	<p>
		<div>
			<label for="motDePasse">Mot de passe :</label>
			<input type="password" name="motDePasse" id="motDePasse" value="<%=listeCodesErreur!=null?request.getParameter("motDepasse"):""%>"required/>

			<label for="Confirmation">Confirmation :</label>
			<input type="password" name="confirmation" id="confirmation"value="<%=listeCodesErreur!=null?request.getParameter("confirmation"):""%>"required/>
		</div>
	</p>
	
		<p>
		<div>
			<input type="submit" value="Créer"/>

			<input type="button" value="Annuler" onclick='location.href="Index.jsp"'/>
		</div>
	</p>
		

	
</form> 

</body>
</html>