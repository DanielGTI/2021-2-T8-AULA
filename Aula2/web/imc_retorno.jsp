<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            
            String peso_txt, altura_txt;
            float peso=0, altura=0, imc=0;
            
            //  RECEBER OS DADOS
            peso_txt = request.getParameter("peso");
            altura_txt = request.getParameter("altura");
            
            //  CONVERTER
            if ( !peso_txt.equals("") ){
                peso = Float.parseFloat(peso_txt);
            }
            
            if ( !altura_txt.equals("") ){
                altura = Float.parseFloat(altura_txt);
            }
            
            out.print(peso);
            out.print("<br>");
            out.print(altura);
            
            if ( peso==0 || altura==0 ){
                out.print("<br>Dados incorretos");
            }else{

                imc = peso / (altura * altura);
                out.print("<br>");
                out.print(imc);
                out.print("<br>");
                
                if ( imc < 18.5 ){
                    out.print("Abaixo do peso ideal.");
                } 
              
                   
                
            }

        %>
    </body>
</html>
