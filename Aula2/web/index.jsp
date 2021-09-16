<%-- 
    Document   : index
    Created on : 09/09/2021, 09:15:43
    Author     : DanieL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo IMC</title>
    </head>
    <body>
        
        <div id="pag">
            
            <h3>Calculadora IMC</h3>
            
            <div id="div_form">
                <p>IMC - Calculo do índice de massa corporal</p>
                <p>Fórmula: IMC = (peso / altura*altura)</p>
                
                <form action="imc_retorno.jsp" method="get" target="result" >
                    Digite o peso:  <input type="text" name="peso" ><br>
                    Digite a altura: <input type="text" name="altura"><br><br>
                    <input  type="submit" name="enviar" value="Calcule o seu IMC">
                </form>
            </div>
            <br>
            <div id="div_result">
                <iframe name="result" width="300" height="200" frameborder="1">
                </iframe>
            </div>    
                
            
        </div>
        
        
     </body>
</html>
