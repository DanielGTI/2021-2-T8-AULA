<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Suporte.Contato" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    List<Contato> getContatos(){
        List<Contato> contatos = new ArrayList<Contato>();
        
        contatos.add(new Contato("Daniel", "123456", "daniel@uninove.br"));
        contatos.add(new Contato("Renata", "654897", "renata@uninove.br"));
        contatos.add(new Contato("Willian", "4577893", "willian@uninove.br"));
        contatos.add(new Contato("Jose Victor", "789456", "jose.victor@uninove.br"));
        
        return contatos;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Colecao</title>
    </head>
    <body>
        <h1>Coleção de dados:</h1>
        <%
            List<Contato> classeAula = getContatos();
            for( Contato estudante : classeAula ){
                out.print("<br>----------<br>");
                out.print("Nome = " + estudante.getNome() );
                out.print("<br>RA = " + estudante.getRa() );
                out.print("<br>email = " + estudante.getEmail() );
            }
        %>
    </body>
</html>
