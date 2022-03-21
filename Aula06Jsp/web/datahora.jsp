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
        <title>DataHora - JavaEE JSP</title>
    </head>
    <body>
        <% Date agora = new Date(); %>
        <h4><a href="index.jsp"> Voltar </a></h4>
        <h1>JavaEE</h1>
        <h2>Java SERVER PAGES</h2>
        <h3>Data/Hora do Servidor</h3>
        <h4>Mostrando server date com scriptlet </h4>
        <div>
            <%
                out.print(agora);
            %>
        </div>
        <h4>Mostrando Server date com expression </h4>
        <div>
            <%=
                agora
            %>
        </div>
    </body>
</html>
