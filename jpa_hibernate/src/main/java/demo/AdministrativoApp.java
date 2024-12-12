package demo;

import entities.Produto;
import models.ProdutoModel;

import java.util.List;

public class AdministrativoApp {

    public static void main(String[] args) {
        ProdutoModel produtoModel = new ProdutoModel();

        Produto p1 = new Produto();
        p1.setNome("TV");
        p1.setPreco(300.0);
        p1.setQuantidade(100);
        p1.setStatus(true);

        produtoModel.create(p1);

        List<Produto> produtos = produtoModel.findAll();
        System.out.println("Produtos encontrados: " + produtos.size());
    }
}
