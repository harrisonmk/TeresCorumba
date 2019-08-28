package Classes;

/**
 *
 * @author Harrison
 */
public class Produto {

    private int id;
    private String nome;
    private String img_produto;
    private int id_categoria;
    private double preco;
    private int estoque;

    public Produto(int id, String nome, String img_produto, int id_categoria, double preco, int estoque) {
        this.id = id;
        this.nome = nome;
        this.img_produto = img_produto;
        this.id_categoria = id_categoria;
        this.preco = preco;
        this.estoque = estoque;
    }

    public Produto() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getImg_produto() {
        return img_produto;
    }

    public void setImg_produto(String img_produto) {
        this.img_produto = img_produto;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }

}
