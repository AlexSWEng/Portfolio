<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link type="text/css" rel="stylesheet" href="inc/style.css" />
<!-- <c:url value="/inc/style.css"/> -->
    <head>
        <meta charset="utf-8" />
        <title>Accueil</title>
    </head>
    
    <body>
    
   		<c:import url="/inc/menu.jsp" />
    
    	<div class="corps">
        <p>Bienvenu sur le Portfolio d'Alexandre Russel.</p>
        <p>Veuillez utiliser le menu ci-dessus pour naviguer, ou le footer en bas de page pour me contacter.</p>
        <p>Voici également des explications sur le fonctionnement de cette page "Contact" contenue dans le Footer : </p>
        <div class="corps2">
        <p></p>
        <img src="images/explications1.png" width=70% alt="Explications Contact 1/2">
        </div>
        <div class="corps2">
        <p></p>
        <img src="images/explications2.png" width=50% alt="Explications Contact 2/2">
        </div>
        <p>Bonne navigation!</p>
        </div>
        
   		<c:import url="/inc/footer.jsp" />
    
    </body>
    
</html>

