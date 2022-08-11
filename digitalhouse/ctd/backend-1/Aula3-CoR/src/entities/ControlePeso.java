package entities;

public class ControlePeso extends ControleHandler{

    @Override
    public String validar(Artigo artigo) {

        String resultado;

        if(artigo.getPeso() > 1199 || artigo.getPeso() < 1301) {
            resultado = "Aceito";
        } else {
            resultado = "Peso incorreto";
        }

        return resultado;
    }
}
