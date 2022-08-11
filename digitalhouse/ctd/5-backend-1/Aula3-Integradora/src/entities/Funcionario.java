package entities;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Funcionario extends Vendedor {

    private List<Vendedor> listaAfiliados;

    public Funcionario(String nome){
        super(nome);
        listaAfiliados = new ArrayList<>();
    }

    public Funcionario(String nome, LocalDate criadoEm){
        super(nome, criadoEm);
        listaAfiliados = new ArrayList<>();
    }

    @Override
    public int calcularPontos() {

        int pontosPorVenda = getVendas() * 5;
        int pontosPorAfiliado = listaAfiliados.size() * 10;
        int pontosPorAno = (LocalDate.now().getYear() - getCriadoEm().getYear()) * 5;

        return pontosPorVenda + pontosPorAfiliado + pontosPorAno;
    }

    public void obterAfiliado(Vendedor v){
        listaAfiliados.add(v);
    }
}
