<%-- 
    Document   : index
    Created on : 02/09/2021, 10:26:39
    Author     : DanieL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Aula 1</title>
    </head>
    <body>
        <h1>Bom dia!!</h1>
        
        <%
            
            int idade = 20;
            String nome = "Daniel";
            
            out.println("Aula de JSP<br>");
            
            //out.println("Aula de JSP");
            
            out.println("Idade = " + idade);
            out.print("<br>");
            
            /*
            out.println("Aula de JSP");
            out.println("Aula de JSP");
            */
            
            out.println("Nome = " + nome);
            
        %>
    </body>
</html>
