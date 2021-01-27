<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />

    <head>
        <meta charset="utf-8" />
        <title>Accueil</title>
    </head>
    
    <body>
    
    	<c:import url="/inc/menu.jsp" />
    
    	<div class="corps">
        <p><a href="<c:url value="/projet1"/>">Projet 1 : Jeu d'Echecs</a></p>
    	<p><a href="<c:url value="/projet2"/>">Projet 2 : Calendrier</a></p>
    	</div>
        
    	<c:import url="/inc/footer.jsp" />
    
    </body>
    
</html>

