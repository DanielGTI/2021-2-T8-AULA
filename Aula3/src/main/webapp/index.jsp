<%@page import="Suporte.Unidades" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h3>Dados e Erros em JSP</h3>
        <div>
            
            <form action="receber_Dados.jsp" name="ItensCadastro" method="post">
                <pre>
    Código do item:   <input type="text" name="codigo" ><!-- comment -->
    Descrição:        <input type="text" name="descricao"  >
    Unidade:          <%=new Unidades().getUnidades()%>
    Saldo:            <input type="text" name="saldo">
    Valor Unitários:  <input type="text" name="valor">
    Observação:       <input type="text" name="obs">
                      <input type="submit" value="Incluir dados" name="acao">
                      <input type="reset" value="Limpar dados">
  
                </pre>
            </form>
                
        </div>
        
    </body>
</html>
