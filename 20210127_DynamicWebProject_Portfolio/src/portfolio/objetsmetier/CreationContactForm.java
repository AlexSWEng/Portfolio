package portfolio.objetsmetier;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import portfolio.beans.Contact;

public final class CreationContactForm {
    private static final String CHAMP_NOM       = "nomContact";
    private static final String CHAMP_PRENOM    = "prenomContact";
    private static final String CHAMP_ADRESSE   = "adresseContact";
    private static final String CHAMP_TELEPHONE = "telephoneContact";
    private static final String CHAMP_EMAIL     = "emailContact";
    private static final String CHAMP_MESSAGE   = "messageContact";

    private String              resultat;
    private Map<String, String> erreurs         = new HashMap<String, String>();

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public String getResultat() {
        return resultat;
    }

    public Contact creerContact( HttpServletRequest request ) {
        String nom = getValeurChamp( request, CHAMP_NOM );
        String prenom = getValeurChamp( request, CHAMP_PRENOM );
        String adresse = getValeurChamp( request, CHAMP_ADRESSE );
        String telephone = getValeurChamp( request, CHAMP_TELEPHONE );
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String message = getValeurChamp( request, CHAMP_MESSAGE );

        Contact contact = new Contact();

        try {
            validationNom( nom );
        } catch ( Exception e ) {
            setErreur( CHAMP_NOM, e.getMessage() );
        }
        contact.setNom( nom );

        try {
            validationPrenom( prenom );
        } catch ( Exception e ) {
            setErreur( CHAMP_PRENOM, e.getMessage() );
        }
        contact.setPrenom( prenom );

        try {
            validationAdresse( adresse );
        } catch ( Exception e ) {
            setErreur( CHAMP_ADRESSE, e.getMessage() );
        }
        contact.setAdresse( adresse );

        try {
            validationTelephone( telephone );
        } catch ( Exception e ) {
            setErreur( CHAMP_TELEPHONE, e.getMessage() );
        }
        contact.setTelephone( telephone );

        try {
            validationEmail( email );
        } catch ( Exception e ) {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }
        contact.setEmail( email );

        contact.setMessage( message );

        if ( erreurs.isEmpty() )
            resultat = "Succès de la création du contact.";
        else
            resultat = "Échec de la création du contact.";

        return contact;
    }

    private void validationNom( String nom ) throws Exception {
        if ( nom != null ) {
            if ( nom.length() < 2 )
                throw new Exception( "Le nom doit contenir au moins 2 caractères." );
        } else
            throw new Exception( "Merci d'entrer un nom." );
    }

    private void validationPrenom( String prenom ) throws Exception {
        if ( prenom != null && prenom.length() < 2 )
            throw new Exception( "Le prénom doit contenir au moins 2 caractères." );
    }

    private void validationAdresse( String adresse ) throws Exception {
        if ( adresse != null )
            if ( adresse.length() < 10 )
                throw new Exception( "L'adresse doit contenir au moins 10 caractères." );
    }

    private void validationTelephone( String telephone ) throws Exception {
        if ( telephone != null )
            if ( !telephone.matches( "^\\d+$" ) )
                throw new Exception( "Le numéro de téléphone doit uniquement contenir des chiffres." );
            else if ( telephone.length() < 4 )
                throw new Exception( "Le numéro de téléphone doit contenir au moins 4 chiffres." );
    }

    private void validationEmail( String email ) throws Exception {
        if ( email != null ) {
            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) )
                throw new Exception( "Merci de saisir une adresse mail valide." );
        } else
            throw new Exception( "Merci d'entrer un email." );
    }

    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }

    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 )
            return null;
        else
            return valeur;
    }
}