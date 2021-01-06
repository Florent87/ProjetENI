<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mon profil</title>
</head>
<div>ENI-ENCHERES</div>

<body>

<h1>Mon profil</h1>

<form name="profil" action=<%=request.getContextPath()%>/ServletAjoutProfil" method="post">

	<p>
		<div>
			<label for="pseudo">Pseudo :</label>
			<input type="text" name="pseudo" id="pseudo" value="<%=request.getParameter("pseudo")%>"required/>

			<label for="nom">Nom :</label>
			<input type="text" name="nom" id="nom" value="<%=request.getParameter("nom")%>"required/>
		</div>
	</p>
	
	<p>
		<div>
			<label for="prenom">Prénom :</label>
			<input type="text" name="prenom" id="prenom" value="<%=request.getParameter("prenom")%>"required/>

			<label for="email">E-mail :</label>
			<input type="email" name="email" id="email" value="<%=request.getParameter("email")%>"required/>
		</div>
	</p>
	
	<p>
		<div>
			<label for="telephone">Téléphone :</label>
			<input type="tel" name="telephone" id="telephone" required value="<%=request.getParameter("telephone")%>"required/>

			<label for="rue">Rue :</label>
			<input type="text" name="rue" id="rue" required value="<%=request.getParameter("rue")%>"required/>
		</div>
	</p>
	
	<p>
		<div>
			<label for="codePostal">Code postal :</label>
			<input type="number" name="codePostal" id="codePostal" value="<%=request.getParameter("code_postal")%>"required/>

			<label for="ville">Ville :</label>
			<input type="text" name="ville" id="ville" value="<%=request.getParameter("ville")%>"required/>
		</div>
	</p>
	
	<p>
		<div>
			<label for="motDePasse">Mot de passe :</label>
			<input type="password" name="motDePasse" id="motDePasse" value="<%=request.getParameter("mot_de_passe")%>"required/>

			<label for="Confirmation">Confirmation :</label>
			<input type="password" name="confirmation" id="confirmation"value="<%=request.getParameter("confirmation")%>"required/>
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