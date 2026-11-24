package view;

import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.ArrayList;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import com.formdev.flatlaf.FlatLightLaf;
import com.lowagie.text.pdf.Barcode;

import controller.FornecedorController;
import controller.ProdutoController;
import model.Fornecedor;
import model.Produto;
import utils.Validador;

public class frmProduto extends JDialog {
	FornecedorController controllerFornecedor =  new FornecedorController();
	ProdutoController controllerProduto = new ProdutoController();
	
	Fornecedor fornecedor = new Fornecedor();
	Produto produto = new Produto();
	
	
	

	private static final long serialVersionUID = 1L;
	private JTextField textIdProduto;
	private JLabel lblProduto;
	private JLabel lblIDProduto;
	private JTextField textDescricao;
	private JTextField textCategoria;
	private JLabel lblCategoria;
	private JLabel lblFornecedor;
	private JComboBox<String> cboFornecedor;
	private JTextField textPrecoCusto;
	private JLabel lblCusto;
	private JTextField textPrecoVenda;
	private JLabel lblVenda;
	private JTextField textIDFornecedor;
	private JLabel lblIdFornecedor;
	private JTextField textQuantidade;
	private JLabel lblQuantidade;
	private JTextField textEstoqueMinimo;
	private JLabel lblEstoqueMinimo;
	private JButton btnAdicionarProduto;
	private JTextField textBarcode;
	private JButton btnExcluirProd;
	private JButton btnupdateProd;
	protected ProdutoController controller;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		FlatLightLaf.setup();
		
		try {
			frmProduto dialog = new frmProduto();
			dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
			dialog.setVisible(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Create the dialog.
	 */
	public frmProduto() {
		setModal(true);
		setResizable(false);
		setTitle("Produtos");
		setIconImage(Toolkit.getDefaultToolkit().getImage(frmProduto.class.getResource("/img/produtos-removebg-preview.png")));
		setBounds(100, 100, 638, 474);
		getContentPane().setLayout(null);
		
		//Iniciar a tela centralizada
		setLocationRelativeTo(null);
		{
			lblProduto = new JLabel("ID");
			lblProduto.setFont(new Font("Arial", Font.PLAIN, 13));
			lblProduto.setBounds(10, 11, 28, 27);
			getContentPane().add(lblProduto);
		}
		
		textIdProduto = new JTextField();
		textIdProduto.setFont(new Font("Arial", Font.PLAIN, 12));
		textIdProduto.setToolTipText("Id Produto");
		textIdProduto.setEnabled(false);
		textIdProduto.setBounds(63, 14, 240, 20);
		getContentPane().add(textIdProduto);
		textIdProduto.setColumns(10);
		
		lblIDProduto = new JLabel("Produto");
		lblIDProduto.setFont(new Font("Arial", Font.PLAIN, 13));
		lblIDProduto.setBounds(2, 53, 50, 27);
		getContentPane().add(lblIDProduto);
		
		textDescricao = new JTextField();
		textDescricao.setBounds(63, 49, 240, 35);
		getContentPane().add(textDescricao);
		textDescricao.setColumns(10);
		//Validador - validação dos campos 
		textDescricao.setDocument(new Validador(100));
		
		lblCategoria = new JLabel("Categoria");
		lblCategoria.setFont(new Font("Arial", Font.PLAIN, 13));
		lblCategoria.setBounds(3, 95, 63, 27);
		getContentPane().add(lblCategoria);
		
		textCategoria = new JTextField();
		textCategoria.setColumns(10);
		textCategoria.setBounds(63, 91, 240, 28);
		getContentPane().add(textCategoria);
		//Validador
		textCategoria.setDocument(new Validador(50));
		
		lblFornecedor = new JLabel("Fornecedor");
		lblFornecedor.setFont(new Font("Arial", Font.PLAIN, 13));
		lblFornecedor.setBounds(313, 95, 75, 27);
		getContentPane().add(lblFornecedor);
		
		//ComboBox - fornecedor
		cboFornecedor = new JComboBox<>();
		//Evento do ComboBox  - seleciona um item da lista ( ID Fornecedor)
		cboFornecedor.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String selecionado = (String) cboFornecedor.getSelectedItem();
				
				if(selecionado != null && !selecionado.equals("Selecionado")) {
					
					String id = selecionado.split(" - ")[0];
					textIDFornecedor.setText(id);
				
				} else {
					textIDFornecedor.setText("");
				}
					
				}
		});
		//Fim do evento cboFornecedor
		cboFornecedor.setBounds(382, 91, 212, 28);
		getContentPane().add(cboFornecedor);
		
		lblCusto = new JLabel("Custo");
		lblCusto.setFont(new Font("Arial", Font.PLAIN, 13));
		lblCusto.setBounds(3, 147, 63, 27);
		getContentPane().add(lblCusto);
		
		textPrecoCusto = new JTextField();
		textPrecoCusto.setColumns(10);
		textPrecoCusto.setBounds(63, 146, 100, 28);
		getContentPane().add(textPrecoCusto);
		//Validador
		textPrecoCusto.setDocument(new Validador(10, "decimal"));
		
		lblVenda = new JLabel("Venda");
		lblVenda.setFont(new Font("Arial", Font.PLAIN, 13));
		lblVenda.setBounds(194, 147, 63, 27);
		getContentPane().add(lblVenda);
		
		textPrecoVenda = new JTextField();
		textPrecoVenda.setColumns(10);
		textPrecoVenda.setBounds(249, 146, 100, 28);
		getContentPane().add(textPrecoVenda);
		//Validador
		textPrecoVenda.setDocument(new Validador(10, "decimal"));
		
		lblIdFornecedor = new JLabel("ID Fornecedor");
		lblIdFornecedor.setFont(new Font("Arial", Font.PLAIN, 13));
		lblIdFornecedor.setBounds(419, 169, 89, 27);
		getContentPane().add(lblIdFornecedor);
		
		textIDFornecedor = new JTextField();
		textIDFornecedor.setEnabled(false);
		textIDFornecedor.setColumns(10);
		textIDFornecedor.setBounds(419, 146, 100, 28);
		getContentPane().add(textIDFornecedor);
		
		lblQuantidade = new JLabel("Quantidade");
		lblQuantidade.setFont(new Font("Arial", Font.PLAIN, 13));
		lblQuantidade.setBounds(2, 195, 75, 27);
		getContentPane().add(lblQuantidade);
		
		textQuantidade = new JTextField();
		textQuantidade.setColumns(10);
		textQuantidade.setBounds(73, 194, 100, 28);
		getContentPane().add(textQuantidade);
		//Validador
		textQuantidade.setDocument(new Validador(10, "inteiro"));
		
		
		lblEstoqueMinimo = new JLabel("Estoque minimo");
		lblEstoqueMinimo.setFont(new Font("Arial", Font.PLAIN, 13));
		lblEstoqueMinimo.setBounds(204, 195, 109, 27);
		getContentPane().add(lblEstoqueMinimo);
		
		textEstoqueMinimo = new JTextField();
		textEstoqueMinimo.setColumns(10);
		textEstoqueMinimo.setBounds(309, 194, 100, 28);
		getContentPane().add(textEstoqueMinimo);
		//Validador
		textEstoqueMinimo.setDocument(new Validador(10, "inteiro"));
		
		JLabel lblCaixa = new JLabel("");
		lblCaixa.setIcon(new ImageIcon(frmProduto.class.getResource("/img/caixas.png")));
		lblCaixa.setBounds(470, 299, 142, 136);
		getContentPane().add(lblCaixa);
		//Botão adicionar
		btnAdicionarProduto = new JButton("");
		//Evento do botão adicionar
		btnAdicionarProduto.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Validações dos campos obrigatórios
				if(textBarcode.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o codigo de barras");
					textBarcode.requestFocus();
				
				}else if(textDescricao.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o nome do produto");
					textDescricao.requestFocus();
				
				}else if (textCategoria.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o nome do produto");
					textCategoria.requestFocus();
				
				}else if (textPrecoVenda.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o preço da venda");
					textPrecoVenda.requestFocus();
				
				}else if (textQuantidade.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha a quantidade");
					textQuantidade.requestFocus();
				
				}else if (textIDFornecedor.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o nome do produto");
					cboFornecedor.requestFocus();
				
				}else if (textPrecoCusto.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o  preço de custo");
					textPrecoCusto.requestFocus();
				
				}else if (textEstoqueMinimo.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o estoque minimo");
					textEstoqueMinimo.requestFocus();
				
				}else {
					produto.setCodigoBarras(textBarcode.getText());
					
					produto.setDescricao(textDescricao.getText());
					
					produto.setCategoria(textCategoria.getText());
					
					//Atenção Converter a " , " por " . " .replace
					produto.setPrecoCusto(Double.parseDouble(textPrecoCusto.getText().replace(",",".")));
					
					produto.setPrecoVenda(Double.parseDouble(textPrecoVenda.getText().replace(",",".")));
					
					produto.setQuantidade(Integer.parseInt(textQuantidade.getText()));
					
					produto.setEstoqueMinimo(Integer.parseInt(textEstoqueMinimo.getText()));
					
					produto.setIdFornecedor(Integer.parseInt(textIDFornecedor.getText()));
					
					
					
					
					boolean sucesso = controllerProduto.adicionar(produto);
					if (sucesso == true) {
						JOptionPane.showMessageDialog(null, "Produto adicionado com sucesso");
						
						limparCampos();
					
					}else {
						JOptionPane.showMessageDialog(null, "Não foi possivel adicionar o produto.\nCodigo de barras duplicado");
						textBarcode.setText(null);
						textBarcode.requestFocus();
					}
					
				}
				
			}
			
			
		});
		//Fim do Botão adicionar
		btnAdicionarProduto.setBorderPainted(false);
		btnAdicionarProduto.setToolTipText("Adicionar Produto");
		btnAdicionarProduto.setIcon(new ImageIcon(frmProduto.class.getResource("/img/adicionarprod.png")));
		btnAdicionarProduto.setBounds(10, 370, 73, 65);
		getContentPane().add(btnAdicionarProduto);
		
		
		textBarcode = new JTextField();
		//===================================================
		//Evento relacionado ao codigo de barras = CRUID Read
		//===================================================
		textBarcode.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				//se a tecla ENTER for pressionada
				if(e.getKeyCode() == KeyEvent.VK_ENTER) {
					//Captura o codigo de barras
					String barcode = textBarcode.getText();
					
					Produto produto = controllerProduto.buscarCodigoBarras(barcode);
					
					//Se existir um produto cadastro
					if(produto != null) {
						textIdProduto.setText(String.valueOf(produto.getIdProduto()));
						
						textDescricao.setText(produto.getDescricao());
						textCategoria.setText(produto.getCategoria());
						textPrecoCusto.setText(String.valueOf(produto.getPrecoCusto()));
						textPrecoVenda.setText(String.valueOf(produto.getPrecoVenda()));
						textQuantidade.setText(String.valueOf(produto.getQuantidade()));
						textEstoqueMinimo.setText(String.valueOf(produto.getEstoqueMinimo()));
						textIDFornecedor.setText(String.valueOf(produto.getIdFornecedor()));
						
						//Localizar e selecionar o fornecedor a partir do id
						for (int i = 0; i < cboFornecedor.getItemCount(); i++) {
					        if (cboFornecedor.getItemAt(i).startsWith(produto.getIdFornecedor() + " - ")) {
					            cboFornecedor.setSelectedIndex(i);
					            break;                                  // achou: para o laço
					        }
					    }
				
				//Desabilitar o botão adicionar
				btnAdicionarProduto.setEnabled(false);
				
				
			} else {
				int resposta = JOptionPane.showConfirmDialog(null, "Produto não cadastrado.\nDeseja cadastrar este produto?", 
						"Aviso",JOptionPane.YES_NO_OPTION);
				
				if(resposta == JOptionPane.NO_OPTION) {
					limparCampos();
				}else {
					textDescricao.requestFocus();
				}
			}
			
		}
					
				
				
			}
		});
		//Fim do evento Codigo de Barras
		textBarcode.setColumns(10);
		textBarcode.setBounds(313, 11, 232, 27);
		getContentPane().add(textBarcode);
		
		JLabel lblLupa = new JLabel("");
		lblLupa.setIcon(new ImageIcon(frmProduto.class.getResource("/img/lupa2.png")));
		lblLupa.setBounds(323, 59, 28, 21);
		getContentPane().add(lblLupa);
		
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon(frmProduto.class.getResource("/img/barra.png")));
		lblNewLabel.setBounds(549, 11, 63, 27);
		getContentPane().add(lblNewLabel);
		
		//Botão Excluir
		btnExcluirProd = new JButton("");
		//Evento do Botão excluir
		btnExcluirProd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (textIdProduto.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Busque o produto pelo código de barras antes de excluir");
					textBarcode.requestFocus();
				} else {
					int idProduto = Integer.parseInt(textIdProduto.getText());

					int conf = JOptionPane.showConfirmDialog(
							null,
							"Deseja realmente excluir este produto?",
							"Atenção!",
							JOptionPane.YES_NO_OPTION
					);

					if (conf == JOptionPane.YES_OPTION) {
						controllerProduto.delete(idProduto);
						limparCampos();
						JOptionPane.showMessageDialog(null, "Produto excluído com sucesso");
					}
				}
			}
		});
		btnExcluirProd.setBorderPainted(false);
		btnExcluirProd.setIcon(new ImageIcon(frmProduto.class.getResource("/img/limpar3.png")));
		btnExcluirProd.setBounds(84, 370, 89, 65);
		getContentPane().add(btnExcluirProd);
		
		
		//Botão Editar
		btnupdateProd = new JButton("");
		//Evento botão Update
		btnupdateProd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Validação do campos obrigatorios
				if (textIdProduto.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Busque o produto antes de atualizar");
					textBarcode.requestFocus();
				} else if (textBarcode.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o codigo de barras");
					textBarcode.requestFocus();
				} else if (textDescricao.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o nome do produto");
					textDescricao.requestFocus();
				} else if (textCategoria.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha a categoria do produto");
					textCategoria.requestFocus();
				} else if (textPrecoCusto.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o preço de custo");
					textPrecoCusto.requestFocus();
				} else if (textPrecoVenda.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o preço da venda");
					textPrecoVenda.requestFocus();
				} else if (textQuantidade.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha a quantidade");
					textQuantidade.requestFocus();
				} else if (textEstoqueMinimo.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o estoque minimo");
					textEstoqueMinimo.requestFocus();
				} else if (textIDFornecedor.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Selecione o fornecedor");
					cboFornecedor.requestFocus();
				} else {
					produto.setIdProduto(Integer.parseInt(textIdProduto.getText()));
					produto.setCodigoBarras(textBarcode.getText());
					produto.setDescricao(textDescricao.getText());
					produto.setCategoria(textCategoria.getText());
					produto.setPrecoCusto(Double.parseDouble(textPrecoCusto.getText().replace(",", ".")));
					produto.setPrecoVenda(Double.parseDouble(textPrecoVenda.getText().replace(",", ".")));
					produto.setQuantidade(Integer.parseInt(textQuantidade.getText()));
					produto.setEstoqueMinimo(Integer.parseInt(textEstoqueMinimo.getText()));
					produto.setIdFornecedor(Integer.parseInt(textIDFornecedor.getText()));
					
					
					
					//Enviar os dados para o controller
					controllerProduto.editarProduto(produto);
					
					//Mensagem para o usuario
					JOptionPane.showMessageDialog(null, "Dados do produto alterado");
					
					
					//Limpar campos
					limparCampos();
				
			
				}	
			}
		});
		btnupdateProd.setBorderPainted(false);
		btnupdateProd.setIcon(new ImageIcon(frmProduto.class.getResource("/img/update (1).png")));
		btnupdateProd.setBounds(173, 359, 83, 76);
		getContentPane().add(btnupdateProd);
		
		carregarFornecedor();
		
	}
	
	//==================== Preencher o comboBox a lista de fornecedores
	private void carregarFornecedor() {
		//limpar o comboBox
		cboFornecedor.removeAllItems();
		
		//Opção padrão
		cboFornecedor.addItem("Selecione");
		
		ArrayList<Fornecedor> lista = controllerFornecedor.listarFornecedores();
		
		for (Fornecedor fornecedor: lista) {
			cboFornecedor.addItem(fornecedor.getIdFornecedor() + " - " + fornecedor.getNome());
			
		}
		
	}
	//===========
	//Limpar Campos
	//===========
	
	void limparCampos() {
		textBarcode.setText(null);
		textDescricao.setText(null);
		textCategoria.setText(null);
		textPrecoCusto.setText(null);
		textPrecoVenda.setText(null);
		textQuantidade.setText(null);
		textEstoqueMinimo.setText(null);
		textIDFornecedor.setText(null);
		cboFornecedor.setSelectedItem("Selecione");
		textBarcode.requestFocus();
		btnAdicionarProduto.setEnabled(true);
	}
}
