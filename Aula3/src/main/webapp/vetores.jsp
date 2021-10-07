<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String DiaDaSemana(int nDiaDaSemana){
        String dias[] = {"Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"};
        return dias[ nDiaDaSemana - 1 ];
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vetor</title>
    </head>
    <body>
        <h1>Vetores</h1>
        
        <%
            //int nomeVetor[];
            //nomeVetor = new int[]{0,1,2,3,4};   
            int nomeVetor[] = {0, 1, 2, 3, 21, 75, 45};
            out.print("<br>Vetor (0) = " + nomeVetor[0]);
            out.print("<br>------------------<br>");
            
            for( int i = 0; i < nomeVetor.length ; i++ ){
                out.print("<br>Vetor (" + i + ") = " + nomeVetor[i]);
            }
            out.print("<br>------------------<br>");
            
            for( int i = 1; i <= 7; i++){
                out.print("<br>" + i +"º dia da semana = " + DiaDaSemana(i));
            }
            
            out.print("<br><br>");
            for( int i = 1; i <= 7; i++){
                out.print(DiaDaSemana(i));
                if( i < 6 ) 
                    out.print(", ");
                if( i == 6 ) 
                    out.print(" e ");
                if( i == 7 ) 
                    out.print(".");                        
            }
            out.print("<br>------------------<br>");
            String aulas[][] = {
                {"Dia da Semana ", "Aula"},
                {"Domingo       ", "Sem aula"},
                {"Segunda       ", "Programação"},
                {"Terça         ", "Programação"},
                {"Quarta        ", "Programação"},
                {"Quinta        ", "Programação"},
                {"Sexta         ", "Programação"},
                {"Sábado        ", "Sem aula"}
            };
            out.print("<pre>");
            for( int L=0; L<aulas.length; L++){
                for( int C=0; C < aulas[L].length; C++ ){
                    out.print(aulas[L][C]);
                }
                out.print(("<br>"));
            }
            out.print("</pre>");
        %>
    </body>
</html>
