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

<form name="profil" action="ListeEncheres.jsp" method="post">

	<p>
		<div>
			<label for="pseudo">Pseudo :</label>
			<input type="text" name="pseudo" id="pseudo" required/>

			<label for="nom">Nom :</label>
			<input type="text" name="nom" id="nom" required/>
		</div>
	</p>
	<p>
		<div>
			<label for="prenom">Prénom :</label>
			<input type="text" name="prenom" id="prenom" required/>

			<label for="email">E-mail :</label>
			<input type="email" name="email" id="email" required/>
		</div>
	</p>
	<p>
		<div>
			<label for="telephone">Téléphone :</label>
			<input type="tel" name="telephone" id="telephone" required/>

			<label for="rue">Rue :</label>
			<input type="text" name="rue" id="rue" required/>
		</div>
	</p>
	<p>
		<div>
			<label for="code_postal">Code postal :</label>
			<input type="number" name="code_postal" id="code_postal" required/>

			<label for="ville">Ville :</label>
			<input type="text" name="ville" id="ville" required/>
		</div>
	</p>
	<p>
		<div>
			<label for="mot_de_passe">Mot de passe :</label>
			<input type="password" name="mot_de_passe" id="mot_de_passe" required/>

			<label for="Confirmation">Confirmation :</label>
			<input type="password" name="Confirmation" id="Confirmation" required/>
		</div>
	</p>
	
		<p>
		<div>
			<input type="submit" value="Créer"/>

			<input type="button" value="Annuler" onclick='location.href="ListeEncheres.jsp"'/>
		</div>
	</p>
		

	
</form> 

</body>
</html>