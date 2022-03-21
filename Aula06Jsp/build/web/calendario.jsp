<%-- 
    Document   : calendario
    Created on : 21 de mar. de 2022, 15:52:04
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean hasParameters = request.getParameter("gerar") != null;
    String errorMessage = null;
    int ano=0, mes=0;
    Date data = new Date();
    try {
        if(hasParameters)
        {
            String a = request.getParameter("ano");
            ano = Integer.parseInt(a);
            String m = request.getParameter("mes");
            mes = Integer.parseInt(m);
        }
    } catch (Exception err) {
        errorMessage = err.getMessage();
    }
    
    Calendar cal = Calendar.getInstance();
    cal.getTime();
    int day = cal.get(Calendar.DAY_OF_WEEK);
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendário Page</title>
    </head>
    <body>
        <h4><a href="index.jsp"> Voltar </a></h4>
        <h1>JavaEE</h1>
        <h2>Java SERVER PAGES</h2>
        <h3>CALENDÁRIO</h3>
         <form action="calendario.jsp">
             <input type="number" name="mes"/>
             <input type="number" name="ano"/>
             <input type="submit" name="gerar" value="GERAR"/>
         </form>
         <%if(errorMessage != null){%>
        <h4 style="color: red"> <%= errorMessage %></h4>
        <%} else if (hasParameters) { %>
        <hr/>
        <table border="1">
            <tr>  </tr>
            <tr><th>Domingo</th><th>Segunda-Feira</th><th>Terça-Feira</th><th>Quarta-Feira</th><th>Quinta-Feira</th><th>Sexta-Feira</th><th>Sábado</th></tr>
            <tr>
           
            </tr>
            <% } %>
        </table> 
        <% } %>
    </body>
</html>
