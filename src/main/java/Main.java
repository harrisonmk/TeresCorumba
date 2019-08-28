
import Modelo.ModeloProduto;
import Classes.Produto;
import java.sql.SQLException;

/**
 *
 * @author Harrison
 */
public class Main {

    public static void main(String[] args) throws SQLException {

        ModeloProduto modelo = new ModeloProduto();

        for (Produto p : modelo.buscaTodosProdutos()) {
            System.out.println(p.getId());
            System.out.println(p.getNome());
        }

    }

}
