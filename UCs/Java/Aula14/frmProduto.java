package view;

import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Toolkit;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JComboBox;

public class frmProduto extends JDialog {

	private static final long serialVersionUID = 1L;
	private JTextField textProduto;
	private JLabel lblProduto;
	private JLabel lblIDProduto;
	private JTextField textDescricao;
	private JTextField textCategoria;
	private JLabel lblCategoria;
	private JLabel lblFornecedor;
	private JComboBox cboFornecedor;
	private JTextField textPrecoCusto;
	private JLabel lblCusto;
	private JTextField textPrecoVenda;
	private JLabel lblVenda;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
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
		
		lblCategoria = new JLabel("Categoria");
		lblCategoria.setFont(new Font("Arial", Font.PLAIN, 13));
		lblCategoria.setBounds(3, 95, 63, 27);
		getContentPane().add(lblCategoria);
		
		textCategoria = new JTextField();
		textCategoria.setColumns(10);
		textCategoria.setBounds(63, 91, 240, 28);
		getContentPane().add(textCategoria);
		
		lblFornecedor = new JLabel("Fornecedor");
		lblFornecedor.setFont(new Font("Arial", Font.PLAIN, 13));
		lblFornecedor.setBounds(313, 95, 75, 27);
		getContentPane().add(lblFornecedor);
		
		cboFornecedor = new JComboBox();
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
		
		lblVenda = new JLabel("Venda");
		lblVenda.setFont(new Font("Arial", Font.PLAIN, 13));
		lblVenda.setBounds(194, 147, 63, 27);
		getContentPane().add(lblVenda);
		
		textPrecoVenda = new JTextField();
		textPrecoVenda.setColumns(10);
		textPrecoVenda.setBounds(249, 146, 100, 28);
		getContentPane().add(textPrecoVenda);
	}
}
