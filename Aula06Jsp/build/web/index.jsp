<%-- 
    Document   : index
    Created on : 21 de mar. de 2022, 13:44:10
    Author     : Fatec
    Este é um comentário JSP
--%>

<%@page import="java.util.Date"%>
<!-- comment HTML -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JavaEE JSP</title>
    </head>
    <body>
        <% Date agora = new Date(); %>
        <h1>JavaEE</h1>
        <h2>Java SERVER PAGES</h2>
        <h3>Inicio</h3>
        <h4>
            <a href="datahora.jsp"> Data/Hora do Servidor </a>
        </h4>
         <h4> SOMA </h4>
         <form action="soma.jsp">
             <input type="number" name="n1"/> +
             <input type="number" name="n2"/>
             <input type="submit" name="soma" value="="/>
         </form>
        <h4> NÚMEROS ALEATÓRIOS </h4>
         <form action="aleatorios.jsp">
             <input type="number" name="n"/>
             <input type="submit" name="gerar" value="GERAR"/>
         </form>
        <h4> TABUADA </h4>
         <form action="tabuada.jsp">
             <input type="number" name="n"/>
             <input type="submit" name="gerar" value="GERAR"/>
         </form>
        <h4> CALENDARIO </h4>
         <form action="calendario.jsp">
             <input type="date" name="diamesano"/>
             <input type="submit" name="gerar" value="GERAR"/>
         </form>
    </body>
</html>
