package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import database.Database;
import model.Fornecedor;

//Sera a classe utilizada para fazer o CRUD no banco de dados
public class FornecedorController {
	//Obejeto database - acesso ao banco de dados
	Database database = new Database();
	
	//Método (função) CRUD
	
	//==============
	//Adicionar fornecedores
	//==============
	public void Adicionar(Fornecedor fornecedor) {
		try {
			String sql = """ 
						insert into fornecedores (nome,fone,email,site)
					values(?,?,?,?)""";
			
		
		Connection con = database.conectar();
		PreparedStatement stmt = con.prepareStatement(sql);
		
		//1, 2, 3, 4 = (?, ?, ?, ?)
		stmt.setString(1, fornecedor.getNome());
			
		stmt.setString(2, fornecedor.getFone());
			
		stmt.setString(3, fornecedor.getEmail());
		
		stmt.setString(4, fornecedor.getSite());
		
		
		stmt.executeUpdate();
		
		//Fechar a conexão com o banco
		stmt.close();
		con.close();
			
		} catch (Exception e) {
			System.out.println(2);
		}
	}
}
