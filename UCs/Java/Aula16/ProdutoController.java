package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import database.Database;
import model.Produto;

public class ProdutoController {
	Database database = new Database();
	
	
	//===========
	//Adicionar Produto - Cruid Create
	//===========
	public boolean adicionar(Produto produto) {
		try {
			String sql = """
					insert into produtos (codigoBarras, descricao, categoria, 
					precoCusto, precoVenda, quantidade, estoqueMinimo, idFornecedor)
					
					values(?,?,?,?,?,?,?,?)
					""";
			
			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			//Verificar se o codigo de barras esta vazio
			if(produto.getCodigoBarras().isBlank()) {
				stmt.setNull(1, java.sql.Types.VARCHAR);
			} else {
				stmt.setString(1, produto.getCodigoBarras());
			}
			
			stmt.setString(2, produto.getDescricao());
			stmt.setString(3, produto.getCategoria());
			stmt.setDouble(4, produto.getPrecoCusto());
			stmt.setDouble(5, produto.getPrecoVenda());
			stmt.setInt(6, produto.getQuantidade());
			stmt.setInt(7, produto.getEstoqueMinimo());
			stmt.setInt(8, produto.getIdFornecedor());
			
			stmt.executeUpdate();
			
			stmt.close();
			con.close();
			
			return true;//Produto inserido com sucesso
			
			
			
		} catch (Exception e) {
			System.out.println("Erro ao adicionar o produto: " + e );
			return false;
		}
	}//Fim do CRUD Create
	
	//===========
	//Buscar produto pelo codigo de barras - CRUID Read
	//===========
	public Produto buscarCodigoBarras(String codigoBarras) {
		try {
			
			String sql = """
					select idProduto, descricao, categoria, precoCusto, precoVenda, quantidade, EstoqueMinimo, IdFornecedor
					from produtos
					where codigoBarras = ?
					""";
			
			Produto produto = null;
			
			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setString(1, codigoBarras);
			
			ResultSet rs = stmt.executeQuery();
			
			//Se existir um produto cadastrado
			if (rs.next()) {
				produto = new Produto();
				produto.setIdProduto(rs.getInt("IdProduto"));
				produto.setDescricao(rs.getString("descricao"));
				produto.setCategoria(rs.getString("categoria"));
				produto.setPrecoCusto(rs.getDouble("precoCusto"));
				produto.setPrecoVenda(rs.getDouble("precoVenda"));
				produto.setQuantidade(rs.getInt("quantidade"));
				produto.setEstoqueMinimo(rs.getInt("estoqueMinimo"));
				produto.setIdFornecedor(rs.getInt("idFornecedor"));
			}
			
			rs.close();
			stmt.close();
			con.close();
			
			return produto;
			
		} catch (Exception e) {
			System.out.println("Erro ao buscar o produto" + e);
			return null;
		}
	}
	
}
