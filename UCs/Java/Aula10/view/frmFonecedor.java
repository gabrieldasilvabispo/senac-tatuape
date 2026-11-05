package view;
import javax.swing.JDialog;
import java.awt.Toolkit;
import javax.swing.JLabel;
import javax.swing.JTextField;

import com.formdev.flatlaf.FlatDarkLaf;

public class frmFonecedor extends JDialog {

	private static final long serialVersionUID = 1L;
	private JTextField textSite;
	private JLabel lblSite;
	private JLabel lblEmail;
	private JTextField txtEmail;
	private JTextField textFone;
	private JLabel lblIDFone;
	private JTextField textID;
	private JLabel lblNome;
	private JTextField textField;
	private JLabel lblID;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		FlatDarkLaf.setup();
		
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
		setTitle("Fornecedor");
		setIconImage(Toolkit.getDefaultToolkit().getImage(frmFonecedor.class.getResource("/img/fornecedor.png")));
		setBounds(100, 100, 680, 480);
		getContentPane().setLayout(null);
		
		setLocationRelativeTo(null);
		
		lblID = new JLabel("Id");
		lblID.setBounds(23, 24, 46, 14);
		getContentPane().add(lblID);
		
		textID = new JTextField();
		textID.setBounds(79, 55, 213, 20);
		getContentPane().add(textID);
		textID.setColumns(10);
		
		textField = new JTextField();
		textField.setEnabled(false);
		textField.setColumns(10);
		textField.setBounds(79, 21, 213, 20);
		getContentPane().add(textField);
		
		lblNome = new JLabel("Nome");
		lblNome.setBounds(23, 57, 43, 17);
		getContentPane().add(lblNome);
		
		textFone = new JTextField();
		textFone.setColumns(10);
		textFone.setBounds(79, 86, 213, 20);
		getContentPane().add(textFone);
		
		lblIDFone = new JLabel("Fone");
		lblIDFone.setBounds(23, 85, 43, 17);
		getContentPane().add(lblIDFone);
		
		txtEmail = new JTextField();
		txtEmail.setColumns(10);
		txtEmail.setBounds(79, 117, 213, 20);
		getContentPane().add(txtEmail);
		
		lblEmail = new JLabel("Email");
		lblEmail.setBounds(23, 113, 43, 17);
		getContentPane().add(lblEmail);
		
		textSite = new JTextField();
		textSite.setColumns(10);
		textSite.setBounds(79, 148, 213, 20);
		getContentPane().add(textSite);
		
		lblSite = new JLabel("Site");
		lblSite.setBounds(23, 150, 43, 17);
		getContentPane().add(lblSite);
	}
}
