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
<%
    boolean hasParameters = request.getParameter("gerar") != null;
    String errorMessage = null;
    double n=0;
    try {
        if(hasParameters)
        {
            String p = request.getParameter("n");
            n = Double.parseDouble(p);
        }
    } catch (Exception err) {
        errorMessage = err.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aleatórios - JavaEE JSP</title>
    </head>
    <body>
        <h4><a href="index.jsp"> Voltar </a></h4>
        <h1>JavaEE</h1>
        <h2>Java SERVER PAGES</h2>
        <h3>Números Aleatórios</h3>
        <form action="aleatorios.jsp">
             <input type="number" name="n" value="<%= n %>"/>
             <input type="submit" name="gerar" value="Gerar"/>
         </form> 
        <%if(errorMessage != null){%>
        <h4 style="color: red"> <%= errorMessage %></h4>
        <%} else if (hasParameters) { %>
        <hr/>
        <table border="1">
            <tr><th>Índice</th><th>Número</th></tr>
                <% for(int i=1; i<=n; i++) { %>
            <tr>
                <td><%= i %></td>
                <td><%= ((int)(Math.random()*100)) %> </td>
            </tr>
            <% } %>
        </table> 
        <% } %>
    </body>
</html>