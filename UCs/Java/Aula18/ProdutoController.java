package controller;

import java.awt.Desktop;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

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
					insert into produtos(codigoBarras, descricao, categoria, precoCusto, precoVenda, quantidade, estoqueMinimo, idFornecedor)
					
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
					select idProduto, descricao, categoria, precoCusto, precoVenda, quantidade, estoqueMinimo, idFornecedor
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
	
	public void delete(int idProduto) {
		try {
			String sql = """
					delete from produtos
					where idProduto = ?
					""";

			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, idProduto);

			stmt.executeUpdate();

			stmt.close();
			con.close();
		} catch (Exception e) {
			System.out.println("Erro ao excluir produto: " + e);
		}
	}
	public void editarProduto (Produto produto) {
		try {
			String sql = """
					update produtos
					set codigoBarras = ?, descricao = ?, categoria = ?, precoCusto = ?, precoVenda = ?, quantidade = ?, estoqueMinimo = ?, idFornecedor = ?
					where idProduto = ?
					""";

			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);

			if (produto.getCodigoBarras().isBlank()) {
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
			stmt.setInt(9, produto.getIdProduto());

			stmt.executeUpdate();

			stmt.close();
			con.close();

			
		} catch (Exception e) {
			System.out.println("Erro ao editar o produto: " + e);
		}
	}
	public Produto buscarProd(String descricao) {
		try {
			String sql = """
					select idProduto, codigoBarras, descricao, categoria, precoCusto, precoVenda, quantidade, estoqueMinimo, idFornecedor
					from produtos
					where descricao like ?
					""";

			Produto produto = null;

			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, "%" + descricao.trim() + "%");

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				produto = new Produto();
				produto.setIdProduto(rs.getInt("idProduto"));
				produto.setCodigoBarras(rs.getString("codigoBarras"));
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
			System.out.println("Erro em buscarProd: " + e);
			return null;
		}
	}
	public void gerarRelatorioProduto() {
		try {
			String sql = """
					select idProduto, codigoBarras, descricao, precoCusto, categoria, precoVenda, quantidade,estoqueMinimo,idFornecedor 
					from produtos
					order by descricao
					""";
			
			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			Document documento = new Document(PageSize.A4);
			
			String caminhoProd = "produtos.pdf";
			
			PdfWriter.getInstance(documento, new FileOutputStream(caminhoProd));
			
			documento.open();
			
			Font fonteTitulo = new Font(Font.getFamilyIndex("Helvetica"), 16, Font.BOLD);
			
			Paragraph titulo = new Paragraph("RELATÓRIO DOS PRODUTOS", fonteTitulo);
			titulo.setAlignment(Element.ALIGN_CENTER);
			documento.add(titulo);
			
			
			// Adicionar data e hora 
			DateTimeFormatter formatoDatahora = DateTimeFormatter.ofPattern("dd/MM/yy HH:mm");
			String dataHora = LocalDateTime.now().format(formatoDatahora);
			Paragraph data = new  Paragraph("Data de emissão: " + dataHora);
			data.setAlignment(Element.ALIGN_CENTER);
			documento.add(data);
			
			
			titulo.setAlignment(Element.ALIGN_CENTER);
			
			
			
			documento.add(new Paragraph (" "));
			
        // Tabela =======================
			
			PdfPTable tabela = new PdfPTable(4);
			
			tabela.setWidths(new float[] {3.0f, 2.0f, 3.0f, 4.0f});
			
			tabela.setWidthPercentage(100);
			
        // Cabeçalho da tabela
			tabela.addCell(" idProduto ");
			tabela.addCell("codigoBarras");
			tabela.addCell("descricao");
			tabela.addCell("categoria");
			tabela.addCell("precoCusto");
			tabela.addCell("precoVenda");
			tabela.addCell("quantidade");
			tabela.addCell("estoqueMinimo");
			tabela.addCell("idFornecedor");
			
			
			int quantidadeProd = 0;
			while (rs.next()) {
				tabela.addCell(rs.getString("idProduto"));
				tabela.addCell(rs.getString("codigoBarras"));
				tabela.addCell(rs.getString("descricao"));
				tabela.addCell(rs.getString("precoCusto"));
				tabela.addCell(rs.getString("precoVenda"));
				tabela.addCell(rs.getString("quantidade" ));
				tabela.addCell(rs.getString("estoqueMinimo"));
				tabela.addCell(rs.getString("idFornecedor"));
				tabela.addCell(rs.getString("categoria"));
				quantidadeProd++;
			}
			
			documento.add(tabela);
			//Fim da tabela
			
			documento.add(new Paragraph(" "));
			Font fonteTotal = new Font(Font.getFamilyIndex("Helvetica"), 10, Font.BOLD);
			
			Paragraph total =  new Paragraph("Total de produtos: " + quantidadeProd, fonteTotal);
			
			total.setAlignment(Element.ALIGN_RIGHT);
			
			documento.add(total);
			documento.close();
			
			rs.close();
			stmt.close();
			con.close();
			
			File arquivo = new File(caminhoProd);
			Desktop.getDesktop().open(arquivo);
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	}
	
	
	
	
	
	

