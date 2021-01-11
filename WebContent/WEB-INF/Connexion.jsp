<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/public/css/connexion.css" rel="stylesheet" />
<title>Page de connexion</title>
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
			<label class=label>Pseudo: </label>
			<input type="text" name="name" value="<%=request.getParameter("pseudo")!=null?request.getParameter("pseudo"):""%>"required/> <br> 
			<label>Mot de passe: </label> 
			<input type="password" name="password"  value="<%=request.getParameter("password")!=null?request.getParameter("password"):""%>"required/> <br> 
			<input type="submit" value="submit" onclick="Index.jsp"> 
			<input type="checkbox"> 
			<label>Se souvenir de moi</label> <a href="#">Mot de passe oublié</a>
		</form>
		<br> <br> <br>
		<button onclick="Profil.jsp">Créér un compte</button>
	</section>

</body>
</html>