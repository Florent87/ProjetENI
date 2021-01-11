<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page de connection</title>
<style type="text/css">
label {
	width: 100px;
	display: inline-block;
}
</style>
</head>
<body>
	<section class="">
		<header>
			<h1>ENI-Enchères</h1>
		</header>
		<form action="connection" method="post">
			<label class=label>Identifiant: </label>
			<input type="text" name="name" /> <br> 
			<label>Mot de passe: </label> 
			<input type="password" name="password" /><br> <input type="submit" value="submit"> <input type="checkbox"> 
			<label>Se souvenir de moi</label> <a href="#">Mot de passe oublié</a>
		</form>
		<br> <br> <br>
		<button onclick="#">Créé un compte</button>
	</section>

</body>
</html>