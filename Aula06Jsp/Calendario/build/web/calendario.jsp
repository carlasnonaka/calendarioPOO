<%-- 
    Document   : calendario
    Created on : 23 de mar de 2022, 21:26:31
    Author     : Carla
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean hasParameters = request.getParameter("gerar") != null;
    String errorMessage = null;
    int ano = Calendar.getInstance().get(Calendar.YEAR);
    int mes = Calendar.getInstance().get(Calendar.MONTH)+1;
    try {
        if(hasParameters)
        {
            String a = request.getParameter("ano");
            ano = Integer.parseInt(a);
            String m = request.getParameter("mes");
            mes = Integer.parseInt(m);
            if(mes<1) {mes=12; ano -= 1;}
            if(mes>12) {mes=1; ano += 1;}
        }
    } catch (Exception err) {
        errorMessage = err.getMessage();
    }
   
    Calendar cal = Calendar.getInstance();
    cal.set(ano, mes-1, 1);
    int diaDaSemana = cal.get(Calendar.DAY_OF_WEEK);
    int totalDiaDoMes = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendário Page</title>
    </head>
    <body>
        <div align="center">
        <h4><a href="index.jsp"> Voltar </a></h4>
        <h1>JavaEE</h1>
        <h2>Java SERVER PAGES</h2>
        <h3>CALENDÁRIO <%=mes%> / <%=ano%></h3>
         <form action="calendario.jsp">
             <input type="number" name="mes" value="<%=mes%>"/>
             <input type="number" name="ano" value="<%=ano%>"/>
             <input type="submit" name="gerar" value="GERAR"/>
         </form>
         <%if(errorMessage != null){%>
        <h4 style="color: red"> <%= errorMessage %></h4>
        <%} else if (hasParameters) { %>
        <hr/>
        <table border="1">
            <tr>
                <th>Domingo</th>
                <th>Segunda-Feira</th>
                <th>Terça-Feira</th>
                <th>Quarta-Feira</th>
                <th>Quinta-Feira</th>
                <th>Sexta-Feira</th>
                <th>Sábado</th>
            </tr>
            <% int dia = 0; %>
                
                <%for(int semana=1; semana<=6; semana++){%>
                    <tr>
                    <%for(int semanaDia=1; semanaDia<=7; semanaDia++){%>
                        <%if(dia == 0 && diaDaSemana == semanaDia) dia=1;%>
                        
                        <%if(dia==0 || dia>totalDiaDoMes){%>
                            <td>&nbsp;</td>
                        <%}else{%>
                            <td><%= dia++ %></td>
                        <%}%>
                    <%}%>
                    </tr>
                    <%if(dia>totalDiaDoMes) break;%>
                <%}%>
                <%}%>
        </table>
        </div>
    </body>
</html>