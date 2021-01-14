<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="fr.eni.ProjetENI.bo.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="fr.eni.ProjetENI.messages.LecteurMessage"%>
<%@page import="fr.eni.ProjetENI.BusinessException.BusinessException"%>

<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/public/css/Profil.css" rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mon profil</title>
</head>
<div>ENI-ENCHERES</div>

<body>
	
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

<h1>Mon profil</h1>	
		
<form class="row g-10 needs-validation" validate>
  <div class="col-md-6">
    <label for="pseudo" class="form-label">Pseudo</label>
    <input type="text" class="form-control" id="pseudo"value="<%=listeCodesErreur!=null?request.getParameter("Pseudo"):""%>"required/>
    <div class="valid-feedback">
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="nom" class="form-label">Nom</label>
    <input type="text" class="form-control" id="nom"value="<%=listeCodesErreur!=null?request.getParameter("Nom"):""%>"required/>
    <div class="valid-feedback">
    </div>
  </div>
  
 
  <div class="col-md-6">
    <label for="prenom" class="form-label">Prénom</label>
    <input type="text" class="form-control" id="prenom"value="<%=listeCodesErreur!=null?request.getParameter("Prénom"):""%>"required/>
    <div class="valid-feedback">
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="email" class="form-label">E-mail</label>
    <input type="text" class="form-control" id="email"value="<%=listeCodesErreur!=null?request.getParameter("E-mail"):""%>"required/>
    <div class="valid-feedback">
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="telephone" class="form-label">Téléphone</label>
    <input type="text" class="form-control" id="telephone"value="<%=listeCodesErreur!=null?request.getParameter("Téléphone"):""%>"required/>
    <div class="valid-feedback">
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="rue" class="form-label">Rue</label>
    <input type="text" class="form-control" id="rue"value="<%=listeCodesErreur!=null?request.getParameter("Rue"):""%>"required/>
    <div class="valid-feedback">
    </div>
    </div>
    
 <div class="col-md-6">
    <label for="codePostal" class="form-label">Code Postal</label>
    <input type="text" class="form-control" id="codePostal"value="<%=listeCodesErreur!=null?request.getParameter("Code Postal"):""%>"required/>
    <div class="valid-feedback">
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="ville" class="form-label">Ville</label>
    <input type="text" class="form-control" id="ville"value="<%=listeCodesErreur!=null?request.getParameter("Ville"):""%>"required/>
    <div class="valid-feedback">
    </div>
    </div>
 
  <div class="col-md-6">
    <label for="motDePasse" class="form-label">Mot de passe</label>
    <input type="password" class="form-control" id="motDePasse"value="<%=listeCodesErreur!=null?request.getParameter("Mot de passe"):""%>"required/>
    <div class="valid-feedback">
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="confirmation" class="form-label">Confirmation</label>
    <input type="password" class="form-control" id="confirmation"value="<%=listeCodesErreur!=null?request.getParameter("Confirmation"):""%>"required/>
    <div class="valid-feedback">
    </div>
    </div>
  
  <p>
		<div>
			<input type="submit" value="Créer"/>

			<input type="button" value="Annuler" onclick="window.location.href='${pageContext.request.contextPath}/SevletIndex';"/>
		</div>
	</p>
</form>
	


</body>
</html>