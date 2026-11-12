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
	
	public void excluir(int idFornecedor) {
		try {
			String sql = """
					delete from fornecedores
					where idFornecedor = ?
					""";

			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setInt(1, idFornecedor);
			
			stmt.executeUpdate();
			
			stmt.close();
			con.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	public void gerarRelatorioFornecedores() {
		try {
			String sql = """
					select nome, fone, email, site
					from fornecedores
					order by nome
					""";
			
			Connection con = database.conectar();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			Document documento = new Document(PageSize.A4);
			
			String caminho = "fornecedor.pdf";
			
			PdfWriter.getInstance(documento, new FileOutputStream(caminho));
			
			documento.open();
			
			Font fonteTitulo = new Font(Font.getFamilyIndex("Helvetica"), 16, Font.BOLD);
			
			Paragraph titulo = new Paragraph("RELATÓRIO DE FORNECEDOR", fonteTitulo);
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
			tabela.addCell("Nome");
			tabela.addCell("Fone");
			tabela.addCell("Email");
			tabela.addCell("Site");
			
			int quantidade = 0;
			while (rs.next()) {
				tabela.addCell(rs.getString("nome"));
				tabela.addCell(rs.getString("fone"));
				tabela.addCell(rs.getString("email"));
				tabela.addCell(rs.getString("site"));
				quantidade++;
			}
			
			documento.add(tabela);
			//Fim da tabela
			
			documento.add(new Paragraph(" "));
			Font fonteTotal = new Font(Font.getFamilyIndex("Helvetica"), 10, Font.BOLD);
			
			Paragraph total =  new Paragraph("Total de fornecedores: " + quantidade, fonteTotal);
			
			total.setAlignment(Element.ALIGN_RIGHT);
			
			documento.add(total);
			documento.close();
			
			rs.close();
			stmt.close();
			con.close();
			
			File arquivo = new File(caminho);
			Desktop.getDesktop().open(arquivo);
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}


	
}
