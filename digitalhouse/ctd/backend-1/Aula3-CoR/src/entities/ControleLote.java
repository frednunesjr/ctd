package entities;

public class ControleLote extends ControleHandler{

    @Override
    public String validar(Artigo artigo) {

        String resultado;

        if(artigo.getLote() > 999 || artigo.getLote() < 1999) {
            resultado = "Aceito";
        } else {
            resultado = "Lote incorreto";
        }

        return resultado;
    }
}
