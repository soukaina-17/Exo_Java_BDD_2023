<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>

    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="inputValeurA" name="valeurA"></p>
    <p>Saisir la valeur B : <input type="text" id="inputValeurB" name="valeurB"></p>
    <p>Saisir la valeur C : <input type="text" id="inputValeurC" name="valeurC"></p>
    <p><input type="submit" value="Vérifier"></p>
</form>

<%-- Récupération des valeurs A, B et C --%>
<% 
    String valeurA = request.getParameter("valeurA");
    String valeurB = request.getParameter("valeurB");
    String valeurC = request.getParameter("valeurC");
%>

<%-- Vérification de la condition si les trois valeurs sont présentes --%>
<% if (valeurA != null && valeurB != null && valeurC != null) { %>
    <%-- Conversion des valeurs en entiers --%>
    <% 
        int intValeurA = Integer.parseInt(valeurA); 
        int intValeurB = Integer.parseInt(valeurB); 
        int intValeurC = Integer.parseInt(valeurC);
    %>
    
    <h2>Résultat de l'exercice : Comparaison de C entre A et B</h2>
    <%-- Vérification si C est compris entre A et B --%>
    <% if ((intValeurC > intValeurA && intValeurC < intValeurB) || (intValeurC > intValeurB && intValeurC < intValeurA)) { %>
        <p>Oui, C (valeur <%= intValeurC %>) est compris entre A (valeur <%= intValeurA %>) et B (valeur <%= intValeurB %>).</p>
    <% } else { %>
        <p>Non, C (valeur <%= intValeurC %>) n'est pas compris entre A (valeur <%= intValeurA %>) et B (valeur <%= intValeurB %>).</p>
    <% } %>
<% } %>



<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
