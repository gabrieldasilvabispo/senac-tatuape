package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	//Buscar fornecedores
	public Fornecedor buscar (String nome) {
		try {
			String sql = """
					select idFornecedor, nome, fone, email, site
					from fornecedores
					where nome like ?
					""";
			
			Fornecedor fornecedor = null;
			
			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, "%" + nome + "%");
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				fornecedor = new Fornecedor();
				fornecedor.setIdFornecedor(rs.getInt("idFornecedor"));
				fornecedor.setNome(rs.getString("nome"));
				fornecedor.setFone(rs.getString("fone"));
				fornecedor.setEmail(rs.getString("email"));
				fornecedor.setSite(rs.getString("site"));
			}
			
			rs.close();
			stmt.close();
			con.close();
			
			return fornecedor;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	

	//==============
	//Editar fornecedores
	//==============
	public void editarFornecedor(Fornecedor fornecedor) {
		try {
			String sql = """
					update fornecedores
					set nome = ?, fone = ?, Email = ?, site = ?
					where idFornecedor = ?
					""";
			
			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, fornecedor.getNome());
			stmt.setString(2, fornecedor.getFone());
			stmt.setString(3, fornecedor.getEmail());
			stmt.setString(4, fornecedor.getSite());
			stmt.setInt(5, fornecedor.getIdFornecedor());
			
			//Executa a atualização no banco
			stmt.executeUpdate();
			
			//Encerra as conexões
			stmt.close();
			con.close();
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
