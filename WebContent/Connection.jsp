<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>ENI-Enchères</h1>
	<form action="connection" method="post">
	Identifiant: <input type="text" name="name" /><br>
	Mot de passe: <input type="password" name="password" /><br>
	<input type="submit" value="submit">
	<input type="checkbox"><label>Se souvenir de moi</label>
	<a href="#">Mot de passe oublié</a>
	</form>
	<br><br><br>
	<button onclick="#">Créé un compte</button>
</body>
</html>