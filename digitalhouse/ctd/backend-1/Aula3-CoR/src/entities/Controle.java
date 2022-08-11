package entities;

public interface Controle {
    void setNextControle(Controle c);
    String validar(Artigo artigo);
}
