package entities;

public abstract class ControleHandler implements Controle{

    private Controle controle;

    @Override
    public void setNextControle(Controle controle) {
        this.controle = controle;
    }

    public Controle getControle() {
        return controle;
    }

    @Override
    public abstract String validar(Artigo artigo);
}
