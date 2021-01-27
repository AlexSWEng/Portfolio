<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />

    <head>
        <meta charset="utf-8" />
        <title>Projet 1 : Jeu d'Echecs</title>
    </head>
    
    <body>
    
    	<c:import url="/inc/menu.jsp" />
    
    	<div class="corps2">
        <p>Projet 1 : Jeu d'Echecs</p>
        <img src="images/echecs.png" width=50% alt="Jeu d'Echecs">
        </div>
        
        <div class="corps2">
        <p>Déroulement d'une partie</p>
        </div>
        
        <div class="corps2">
        <p>Début de la partie</p>
        <img src="images/echecs_partie_debut.png" width=20% alt="Début de la partie">
        </div>
        
        <div class="corps2">
        <p>Exemple de coup accepté</p>
        <img src="images/echecs_partie_coup.png" width=21% alt="Exemple de coup accepté">
        </div>
        
        <div class="corps2">
        <p>Exemple de coup refusé</p>
        <img src="images/echecs_partie_impossible.png" width=35% alt="Exemple de coup refusé">
        </div>
        
        <div class="corps2">
        <p>Demande d'afficher les coups possibles pour une pièce donnée</p>
        <img src="images/echecs_partie_help.png" width=22% alt="Demande d'aide">
        </div>
        
        <div class="corps2">
        <p>Structure du code :</p>
        </div>
        
        <div class="corps2">
        <p>Diagramme de classes [PROVISOIRE A REFAIRE SUR https://app.diagrams.net]</p>
        <img src="images/echecs_classesdiagram.jpg" width=70% alt="Diagramme de classes">
        </div>
        
        <div class="corps2">
        <p>Méthode play() : la boucle principale du jeu</p>
        <img src="images/methodes_play.png" width=55% alt="Méthode play()">
        </div>
        
        <div class="corps2">
        <p>Méthode calcNextMoves() : on remplie un tableau contenant les cases valides où la pièce sélectionnée peut bouger.</p>
        Cette méthode est dans l'interface CalcMoves que la classe mère Pièce implémente.<br />
        Elle est donc polymorphée par toutes les classes enfants : Pion, Tour, Reine...etc.<br />
        <br />
        Voici un exemple pour le Pion :<br />
        <br />
        <img src="images/methodes_calcNextMoves_Pion.png" width=70% alt="Méthode calcNextMoves()">
        </div>
        
        <div class="corps2">
        <p>Méthode move() : on vérifie que la case selectionnée est dans le tableau de cases possibles.</p>
        <img src="images/methodes_move.png" width=60% alt="Méthode move()">
        </div>
        
        <div class="corps2">
        <p>Méthode displayHelp() : on demande d'afficher toutes les cases valides pour la pièce sélectionnée.</p>
        <img src="images/methodes_displayHelp.png" width=50% alt="Méthode displayHelp()">
        </div>
     
    	<c:import url="/inc/footer.jsp" />
    
    </body>
    
</html>

