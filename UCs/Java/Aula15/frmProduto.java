package view;

import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import com.formdev.flatlaf.FlatLightLaf;

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
	private JTextField textProduto;
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
		
		textProduto = new JTextField();
		textProduto.setFont(new Font("Arial", Font.PLAIN, 12));
		textProduto.setToolTipText("Id Produto");
		textProduto.setEnabled(false);
		textProduto.setBounds(63, 14, 240, 20);
		getContentPane().add(textProduto);
		textProduto.setColumns(10);
		
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
				
				}
				
			}
		});
		//Fim do Botão adicionar
		btnAdicionarProduto.setBorderPainted(false);
		btnAdicionarProduto.setToolTipText("Adicionar Produto");
		btnAdicionarProduto.setIcon(new ImageIcon(frmProduto.class.getResource("/img/adicionarprod.png")));
		btnAdicionarProduto.setBounds(4, 359, 73, 65);
		getContentPane().add(btnAdicionarProduto);
		
		textBarcode = new JTextField();
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
}
