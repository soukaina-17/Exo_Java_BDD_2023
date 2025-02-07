<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>

<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
        <% } %>

    
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


<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeurP1" name="valeurP1"></p>
    <p>Saisir la valeur 2 : <input type="text" id="inputValeurP2" name="valeurP2"></p>
    <p><input type="submit" value="Vérifier"></p>
</form>

<%-- Récupération des valeurs A, B et C --%>
<% 
    String valeurP1 = request.getParameter("valeurP1");
    String valeurP2 = request.getParameter("valeurP2");
%>

<% if (valeurP1 != null && valeurP2 != null) { %>
    <%-- Conversion des valeurs en entiers --%>
    <% 
        int intValeurP1 = Integer.parseInt(valeurP1); 
        int intValeurP2 = Integer.parseInt(valeurP2); 
    %>

<%-- Vérification de la parité pour la valeur 1 --%>
        <% if (intValeurP1 % 2 == 0) { %>
            <p>Valeur1 : Le nombre est pair.</p>

        <% } else { %>
            <p>Valeur1 : Le nombre est impair.</p>
        <% } %>

        <%-- Vérification de la parité pour la valeur 2 --%>
        <% if (intValeurP2 % 2 == 0) { %>
            <p>Valeur2 : Le nombre est pair.</p>

        <% } else { %>
            <p>Valeur2 : Le nombre est impair.</p>
        <% } %>
     <% } %>



<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
