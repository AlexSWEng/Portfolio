package portfolio.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portfolio.beans.Contact;
import portfolio.objetsmetier.CreationContactForm;

public class CreationContact extends HttpServlet {
    public static final String ATT_CONTACT = "contact";
    public static final String ATT_FORM    = "form";

    public static final String VUE_SUCCES  = "/WEB-INF/afficherContact.jsp";
    public static final String VUE_FORM    = "/WEB-INF/creerContact.jsp";

    @Override
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* À la réception d'une requête GET, simple affichage du formulaire */
        this.getServletContext().getRequestDispatcher( VUE_FORM ).forward( request, response );
    }

    @Override
    public void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        /* Préparation de l'objet formulaire */
        CreationContactForm form = new CreationContactForm();

        /* Traitement de la requête et récupération du bean en résultant */
        Contact contact = form.creerContact( request );

        /* Ajout du bean et de l'objet métier à l'objet requête */
        request.setAttribute( ATT_CONTACT, contact );
        request.setAttribute( ATT_FORM, form );

        if ( form.getErreurs().isEmpty() )
            /* Si aucune erreur, alors affichage de la fiche récapitulative */
            this.getServletContext().getRequestDispatcher( VUE_SUCCES ).forward( request, response );
        else
            /* Sinon, ré-affichage du formulaire de création avec les erreurs */
            this.getServletContext().getRequestDispatcher( VUE_FORM ).forward( request, response );
    }
}