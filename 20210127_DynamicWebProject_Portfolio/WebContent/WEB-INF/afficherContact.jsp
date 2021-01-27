<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>Affichage d'un client</title>
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />
</head>

<body>
	<c:import url="/inc/menu.jsp" />
	<div class="corps">
		<p class="info">${ form.resultat }</p>
			
			<p>
			Nom :
			<c:out value="${ contact.nom }" />
			</p>
		
			<p>
			Prénom :
			<c:out value="${ contact.prenom }" />
			</p>
		
			<p>
			Adresse :
			<c:out value="${ contact.adresse }" />
			</p>
			
			<p>
			Numéro de téléphone :
			<c:out value="${ contact.telephone }" />
			</p>
		
			<p>
			Email :
			<c:out value="${ contact.email }" />
			</p>
		
			<p>
			Votre message :
			<c:out value="${ contact.message }" />
			</p>
			
	</div>
	<c:import url="/inc/footer.jsp" />
</body>

</html>