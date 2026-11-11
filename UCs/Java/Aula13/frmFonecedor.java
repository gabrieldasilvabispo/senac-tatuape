package view;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import com.formdev.flatlaf.FlatDarkLaf;
import com.formdev.flatlaf.FlatLightLaf;

import controller.FornecedorController;
import model.Fornecedor;
import utils.Validador;
import java.awt.Color;

public class frmFonecedor extends JDialog {

	private static final long serialVersionUID = 1L;
	private JTextField txtSite;
	private JLabel lblSite;
	private JLabel lblEmail;
	private JTextField txtEmail;
	private JTextField txtFone;
	private JLabel lblIDFone;
	private JTextField txtNome;
	private JLabel lblNome;
	private JTextField txtID;
	private JLabel lblID;
	private JButton btnAdicionar;
	private JButton btnEditar;
	private JButton btnExcluir;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
	FlatLightLaf.setup();
	
	
	
		
		try {
			frmFonecedor dialog = new frmFonecedor();
			dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
			dialog.setVisible(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Create the dialog.
	 */
	public frmFonecedor() {
		setResizable(false);
		setModal(true);
		setResizable(false);
		setTitle("Fornecedor");
		setIconImage(Toolkit.getDefaultToolkit().getImage(frmFonecedor.class.getResource("/img/fornecedor.png")));
		setBounds(100, 100, 680, 480);
		getContentPane().setLayout(null);
		
		//Centralizar a tela ao abrir
		setLocationRelativeTo(null);
		
		//Objeto controller
		FornecedorController controller = new FornecedorController();
		
		//Objeto fornecedor
		Fornecedor fornecedor = new Fornecedor();
		
		lblID = new JLabel("Id");
		lblID.setBounds(23, 14, 46, 14);
		getContentPane().add(lblID);
		
		txtNome = new JTextField();
		txtNome.setBounds(45, 39, 216, 36);
		getContentPane().add(txtNome);
		txtNome.setColumns(10);
		
		//Validação de número maximo de caracter
		txtNome.setDocument(new Validador(50,
				"texto"));
		
		
		
		txtID = new JTextField();
		txtID.setEnabled(false);
		txtID.setColumns(10);
		txtID.setBounds(45, 11, 213, 20);
		getContentPane().add(txtID);
		
		lblNome = new JLabel("Nome");
		lblNome.setBounds(10, 44, 43, 17);
		getContentPane().add(lblNome);
		
		
		txtFone = new JTextField();
		txtFone.setColumns(10);
		txtFone.setBounds(45, 77, 216, 31);
		getContentPane().add(txtFone);
		txtFone.setDocument(new Validador(20));
		
		lblIDFone = new JLabel("Fone");
		lblIDFone.setBounds(10, 79, 43, 17);
		getContentPane().add(lblIDFone);
		
		txtEmail = new JTextField();
		txtEmail.setColumns(10);
		txtEmail.setBounds(45, 113, 216, 36);
		getContentPane().add(txtEmail);
		txtEmail.setDocument(new Validador(50));
		
		lblEmail = new JLabel("Email");
		lblEmail.setBounds(10, 119, 43, 17);
		getContentPane().add(lblEmail);
		
		txtSite = new JTextField();
		txtSite.setColumns(10);
		txtSite.setBounds(45, 156, 216, 34);
		getContentPane().add(txtSite);
		
		lblSite = new JLabel("Site");
		lblSite.setBounds(10, 160, 46, 27);
		getContentPane().add(lblSite);
		
		//Evento do botão adicionar
		btnAdicionar = new JButton("");
		btnAdicionar.setToolTipText("Adicionar");
		btnAdicionar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (txtNome.getText().isBlank()){
				JOptionPane.showConfirmDialog(null, "Preencha o nome do fornecedor");
				txtNome.requestFocus();
					
				}else if (txtFone.getText().isBlank()) {
					JOptionPane.showConfirmDialog(null, "Preencha o telefone do fornecedor");
				}else {
					fornecedor.setNome(txtNome.getText());
					fornecedor.setFone(txtFone.getText());
					fornecedor.setEmail(txtEmail.getText());
					fornecedor.setSite(txtSite.getText());
					
					
					controller.Adicionar(fornecedor);
					
					JOptionPane.showMessageDialog(null, "Fornecedor adicionado com sucesso");
					
					limparCampos();
				}
			}
		});
		btnAdicionar.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		btnAdicionar.setIcon(new ImageIcon(frmFonecedor.class.getResource("/img/Adcionar2.png")));
		btnAdicionar.setBounds(0, 249, 115, 73);
		getContentPane().add(btnAdicionar);
		
		JButton btnLimpar = new JButton("");
		btnLimpar.setBackground(Color.WHITE);
		btnLimpar.setIcon(new ImageIcon(frmFonecedor.class.getResource("/img/limpar3.png")));
		btnLimpar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				limparCampos();
				
				
			}
		});
		btnLimpar.setToolTipText("LimparCampos");
		btnLimpar.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		btnLimpar.setBounds(426, 249, 115, 73);
		getContentPane().add(btnLimpar);
		
		/*Botão buscar*/
		JButton btnBuscar = new JButton("Buscar\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n");
		btnBuscar.setIcon(new ImageIcon(frmFonecedor.class.getResource("/img/lupa2.png")));
		btnBuscar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(txtNome.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Informe o nome de fornecedor");
					txtNome.requestFocus();
				} else {
					String nome = txtNome.getText();
					
					Fornecedor fornecedor = controller.buscar(nome);
					
					//Se existir um fornecedor cadastrado
					if(fornecedor != null) {
						txtID.setText(String.valueOf(fornecedor.getIdFornecedor()));
						
						txtNome.setText(fornecedor.getNome());
						txtFone.setText(fornecedor.getFone());
						txtEmail.setText(fornecedor.getEmail());
						txtSite.setText(fornecedor.getSite());
						
						//Desabilidar o botão adicionar
						btnAdicionar.setEnabled(false);
						
					} else {
						JOptionPane.showMessageDialog(null, "Fornecedor não cadastrado");
						limparCampos();
					}
				}
			}
		});
		//Associar o Enter ao botão buscar
		getRootPane().setDefaultButton(btnBuscar);
		
		
		
		
		btnBuscar.setFont(new Font("Tahoma", Font.PLAIN, 12));
		btnBuscar.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		btnBuscar.setToolTipText("Buscar");
		btnBuscar.setBounds(285, 38, 95, 36);
		getContentPane().add(btnBuscar);
		
		//Botão Editar
		btnEditar = new JButton("");
		//Evento do botão Editar
		btnEditar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Validação do campos obrigatorios
				if(txtNome.getText().isBlank()){
				 JOptionPane.showConfirmDialog(null, "Preencha o nome do fornecedor");
				 txtNome.requestFocus();
				} else if (txtFone.getText().isBlank()) {
					JOptionPane.showMessageDialog(null, "Preencha o telefone do fornecedor");
					txtFone.requestFocus();
					
				} else {
					fornecedor.setIdFornecedor(Integer.parseInt(txtID.getText()));
					fornecedor.setNome(txtNome.getText());
					fornecedor.setFone(txtFone.getText());
					fornecedor.setEmail(txtEmail.getText());
					fornecedor.setSite(txtSite.getText());
					
					//Enviar os dados para o controller
					controller.editarFornecedor(fornecedor);
					
					//Mensagem para o usuario
					JOptionPane.showMessageDialog(null, "Dados do fornecedor alterado");
					
					
					//Limpar campos
					limparCampos();
					
					
					
				}
				
			}
		});
		btnEditar.setToolTipText("Editar");
		btnEditar.setIcon(new ImageIcon(frmFonecedor.class.getResource("/img/update.png")));
		btnEditar.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		btnEditar.setBounds(135, 249, 120, 73);
		getContentPane().add(btnEditar);
		
		
		//Botão excluir
		btnExcluir = new JButton("");
		//Evento do botão excluir
		btnExcluir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//validação
				if(txtNome.getText().isBlank()){
					JOptionPane.showMessageDialog(null, "Digite o nome fornecedor");
					
					txtNome.requestFocus();
				} else {
					int idFornecedor = Integer.parseInt(txtID.getText());
				
					int resposta = JOptionPane.showConfirmDialog(null, "Deseja realmente excluir/este fornecedor", "Atenção!", JOptionPane.YES_OPTION);
					
					if(resposta == JOptionPane.YES_OPTION) {
						controller.excluir(idFornecedor);
						
						limparCampos();
						
						JOptionPane.showMessageDialog(null, "Fornecedor excluido com sucesso");
					}
				}
			}
		});//fim do CRUID delete ========
		btnExcluir.setToolTipText("Excluir");
		btnExcluir.setIcon(new ImageIcon(frmFonecedor.class.getResource("/img/excluir2.png")));
		btnExcluir.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		btnExcluir.setBounds(285, 249, 115, 73);
		getContentPane().add(btnExcluir);
	}
	
	void limparCampos() {
		txtID.setText(null);
		txtNome.setText(null);
		txtFone.setText(null);
		txtEmail.setText(null);
		txtID.setText(null);
		txtSite.setText(null);
		btnAdicionar.setEnabled(true);
	}
}
