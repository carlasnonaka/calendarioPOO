<%-- 
    Document   : index
    Created on : 23 de mar de 2022, 22:18:30
    Author     : Carla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDEX - JAVA EE JSP</title>
    </head>
    <body>
        <h4> CALENDÁRIO </h4>
         <form action="calendario.jsp">
             <div> MÊS </div>
             <input type="number" name="mes" placeholder="Ex: 03"/>
             
             <div> ANO </div>
             <input type="number" name="ano" placeholder="Ex: 2021"/>
            
             <input type="submit" name="gerar" value="GERAR"/>
         </form>
    </body>
</html>
