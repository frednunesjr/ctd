package entities;

import java.time.LocalDate;

public class Estagiario extends Vendedor {

    public Estagiario(String nome){
        super(nome);
    }

    public Estagiario(String nome, LocalDate criadoEm){
        super(nome, criadoEm);
    }
    @Override
    public int calcularPontos() {
       return getVendas() * 5;
    }

    @Override
    public void mostrarCategoria() {
        int pontos = calcularPontos();
        String categoria;

        if(pontos > 49) {
            categoria = "Estagiário Experiente";
        } else {
            categoria = "Estagiário Novato";
        }

        System.out.printf("Vendedor: %s\nPontos: %d\nCategoria: %s\n", getNome(), calcularPontos(), categoria);
        System.out.println("======================");
    }
}
