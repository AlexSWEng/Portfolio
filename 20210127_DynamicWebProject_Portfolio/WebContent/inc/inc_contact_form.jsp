<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<label for="nomContact">Nom <span class="requis">*</span></label>
<input type="text" id="nomContact" name="nomContact" value="<c:out value="${contact.nom}"/>" size="50" maxlength="50" />
<span class="erreur">${form.erreurs['nomContact']}</span>
<br />

<label for="prenomContact">Prénom </label>
<input type="text" id="prenomContact" name="prenomContact" value="<c:out value="${contact.prenom}"/>" size="50" maxlength="50" />
<span class="erreur">${form.erreurs['prenomContact']}</span>
<br />

<label for="adresseContact">Adresse</label>
<input type="text" id="adresseContact" name="adresseContact" value="<c:out value="${contact.adresse}"/>" size="50" maxlength="50" />
<span class="erreur">${form.erreurs['adresseContact']}</span>
<br />

<label for="telephoneContact">Numéro de téléphone</label>
<input type="text" id="telephoneContact" name="telephoneContact" value="<c:out value="${contact.telephone}"/>" size="50" maxlength="50" />
<span class="erreur">${form.erreurs['telephoneContact']}</span>
<br />

<label for="emailContact">Email<span class="requis">*</span></label>
<input type="email" id="emailContact" name="emailContact" value="<c:out value="${contact.email}"/>" size="50" maxlength="50" />
<span class="erreur">${form.erreurs['emailContact']}</span>
<br />

<label for="messageContact">Laissez moi un message :</label>
<textarea id="messageContact" name="messageContact" placeholder="<c:out value="${contact.message}"/>" rows="10" cols="100"></textarea>
<br />