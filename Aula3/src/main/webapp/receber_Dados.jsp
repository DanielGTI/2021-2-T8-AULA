<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="TratarErro.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Resposta</title>
    </head>
    <body>
        <h2>Cadastro de itens</h2>
        
        <%
            int codigo = Integer.parseInt( request.getParameter("codigo") );
            String descricao = request.getParameter("decricao");
            String unidade = request.getParameter("unidade");
            float saldo = Float.parseFloat( request.getParameter("saldo") );
            float valorUnitario = Float.parseFloat( request.getParameter("valor") );
            String obs = request.getParameter("obs");
            
            out.print("<br>Código do produto = " + codigo);
            out.print("<br>Descrição do produto = " + descricao);

        %>
        <pre>
Código do produto = <%=codigo%>
        </pre>
    </body>
</html>
