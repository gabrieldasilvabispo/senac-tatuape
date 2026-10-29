package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
	//Informações do Banco de Dados
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost/Gbpdv";
	private String user = "root";
	private String password = "";
	
	public Connection conectar() {
		try {
			Class.forName(driver);
			return DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	//Metodo para testar a conexão (status)
	public boolean testarConexao() {
		Connection con = conectar();
		
		if(con == null) {
			return false;
		}
	try {
		con.close();
		return true;
		
	} catch (Exception e) {
		System.out.println(e);
		return false;
	}
	}
}
