package entities;

import java.time.LocalDate;

public abstract class Vendedor {

    private String nome;
    private int vendas;
    private LocalDate criadoEm;

    public Vendedor(String nome){
        this.nome = nome;
        criadoEm = LocalDate.now();
    }

    public Vendedor(String nome, LocalDate criadoEm){
        this.nome = nome;
        this.criadoEm = criadoEm;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getVendas() {
        return vendas;
    }

    public LocalDate getCriadoEm() {
        return criadoEm;
    }

    public void vender() {
        vendas++;
    };

    public void mostrarCategoria(){

        int pontos = calcularPontos();
        String categoria;

        if(pontos > 40) {
            categoria = "Mestre";
        } else if (pontos > 30 && pontos < 41){
            categoria = "Bom";
        } else if (pontos > 19 && pontos < 31) {
            categoria = "Aprendiz";
        } else {
            categoria = "Novato";
        }

        System.out.printf("Vendedor: %s\nPontos: %d\nCategoria: %s\n", getNome(), calcularPontos(), categoria);
        System.out.println("======================");
    }

    public abstract int calcularPontos();

}
