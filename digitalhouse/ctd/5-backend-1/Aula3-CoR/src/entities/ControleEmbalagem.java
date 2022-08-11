package entities;

public class ControleEmbalagem extends ControleHandler{

    @Override
    public String validar(Artigo artigo) {

        String resultado;

        if(super.getControle() != null || artigo.getEmbalagem() == "saudável" || artigo.getEmbalagem() == "quase saudável") {
            resultado = "Aceito";
        } else {
            resultado = "Embalagem incorreta";
            super.validar(artigo);
        }

        return resultado;
    }
}
