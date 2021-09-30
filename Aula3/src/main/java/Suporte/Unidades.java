package Suporte;

public class Unidades {

    String html = "";

    public Unidades(){
        html += "<select name=\"unidade\" id=\"unidade\">";
        html += "<option value=\"kg\">Kilo</option>";
        html += "<option value=\"uni\">Unidade</option>";
        html += "<option value=\"vol\">Volume</option>";
        html += "<option value=\"frac\">Fracionado</option>";
        html += "</select>";        
    }

    public String getUnidades(){
        return html;
    }

}
