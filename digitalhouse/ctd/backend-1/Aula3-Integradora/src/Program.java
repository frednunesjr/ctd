import entities.*;
import java.time.LocalDate;

public class Program {
    public static void main(String[] args) {

        Vendedor func1, func2, afil1, afil2, afil3;

        func1 = new Funcionario("Fred");
        func2 = new Funcionario("Gabriela", LocalDate.of(2020, 01, 21));
        afil1 = new Afiliado("Alice");
        afil2 = new Afiliado("Marina");
        afil3 = new Afiliado("Gabriel");

        func1.vender();
        ((Funcionario) func1).obterAfiliado(afil1);

        func2.vender();
        func2.vender();
        func2.vender();
        ((Funcionario) func2).obterAfiliado(afil2);
        ((Funcionario) func2).obterAfiliado(afil3);

        afil1.vender();
        afil1.vender();
        afil1.vender();
        afil1.vender();
        afil2.vender();
        afil2.vender();
        afil3.vender();

        func1.mostrarCategoria();
        func2.mostrarCategoria();
        afil1.mostrarCategoria();
        afil2.mostrarCategoria();
        afil3.mostrarCategoria();

        Vendedor estag1, estag2, estag3;

        estag1 = new Estagiario("Jessica");
        estag2 = new Estagiario("David");
        estag3 = new Estagiario("John");

        estag1.vender();
        estag2.vender();

        int vendas = 0;
        do {
            estag3.vender();
            vendas++;
        } while (vendas < 12);

        estag1.mostrarCategoria();
        estag2.mostrarCategoria();
        estag3.mostrarCategoria();

    }
}
