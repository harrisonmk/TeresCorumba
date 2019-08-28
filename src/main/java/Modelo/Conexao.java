package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Harrison
 */
public class Conexao {

    private String usuario = "root";
    private String senha = "";
    private String hostName = "localhost";
    private String porta = "3306";
    private String database = "lojajsp?useTimezone=true&serverTimezone=UTC";
    private String className = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://" + hostName + ":" + porta + "/" + database;
    private Connection conexao;

    public Conexao() {

        try {

            Class.forName(className);
            this.conexao = DriverManager.getConnection(url, usuario, senha);

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println(e.getMessage());
        }

    }
    
    public Connection getConectar(){
        return this.conexao;
    }

}
