<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des enchères</title>
</head>
<div>ENI-ENCHERES</div>
<div><a href="Connection.jsp"> S'inscrire-Se connecter</a></div>
<body>
<h1>Liste des enchères</h1>


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
			    <optcategorie label="Toutes:">
				<option>Informatique</option>
				<option>Ameublement</option>
				<option>Vêtement</option>
				<option>Sport & Loisirs</option>
				<input type="submit">
				</select>
					
                </div>

</body>
</html>