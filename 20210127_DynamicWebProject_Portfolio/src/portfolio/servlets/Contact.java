package portfolio.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Contact extends HttpServlet {

    public static final String VUE = "/WEB-INF/contact.jsp";

    @Override
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /*
         * À la réception d'une requête GET, simple affichage de la page contact
         */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    @Override
    public void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

    }
}