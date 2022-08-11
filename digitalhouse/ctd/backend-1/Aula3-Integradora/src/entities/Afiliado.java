package entities;

import java.time.LocalDate;

public class Afiliado extends Vendedor {

    public Afiliado(String nome){
        super(nome);
    }

    public Afiliado(String nome, LocalDate criadoEm){
        super(nome, criadoEm);
    }
    @Override
    public int calcularPontos() {
       return getVendas() * 10;
    }
}
