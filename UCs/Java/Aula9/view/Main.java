package view;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Toolkit;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import com.formdev.flatlaf.FlatLightLaf;

import database.Database;
import java.awt.SystemColor;
import javax.swing.JButton;

public class Main extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JLabel lblData;
	
	Database db = new Database();

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		// Uso da biblioteca faltaf (swing moderno)
		FlatLightLaf.setup();
		
		
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Main frame = new Main();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Main() {
		setTitle("Gb-pdv");
		setResizable(false);
		setIconImage(Toolkit.getDefaultToolkit().getImage(Main.class.getResource("/img/Gbpdv.png")));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 801, 597);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblDataBase = new JLabel("");
		lblDataBase.setIcon(new ImageIcon(Main.class.getResource("/img/banco.png")));
		lblDataBase.setBounds(10, 508, 25, 39);
		contentPane.add(lblDataBase);
		
		JLabel lblMysql = new JLabel("");
		lblMysql.setBounds(29, 508, 162, 39);
		contentPane.add(lblMysql);
		
		JLabel lblStatus = new JLabel("•");
		lblStatus.setHorizontalAlignment(SwingConstants.CENTER);
		lblStatus.setForeground(Color.RED);
		lblStatus.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblStatus.setBounds(124, 508, 31, 39);
		contentPane.add(lblStatus);
		
		JLabel lblCalendario = new JLabel("");
		lblCalendario.setIcon(new ImageIcon(Main.class.getResource("/img/calendari.png")));
		lblCalendario.setBounds(631, -20, 39, 66);
		contentPane.add(lblCalendario);
		
		lblData = new JLabel("");
        lblData.setFont(new Font("Tahoma", Font.PLAIN, 12));
        lblData.setBounds(665, 0, 120, 18);
        contentPane.add(lblData);
        
        JPanel panelLateral = new JPanel();
        panelLateral.setBackground(new Color(102, 51, 153));
        panelLateral.setBounds(0, 0, 191, 518);
        contentPane.add(panelLateral);
        panelLateral.setLayout(null);
        
        JLabel lblLogo = new JLabel("");
        lblLogo.setBackground(new Color(51, 51, 153));
        lblLogo.setIcon(new ImageIcon(Main.class.getResource("/img/Gbpdv.png")));
        lblLogo.setBounds(0, 0, 64, 65);
        panelLateral.add(lblLogo);
        
        JLabel lblNewLabel = new JLabel("GB-PDV");
        lblNewLabel.setBackground(new Color(255, 255, 204));
        lblNewLabel.setFont(new Font("Arial", Font.BOLD, 25));
        lblNewLabel.setBounds(74, 11, 111, 54);
        panelLateral.add(lblNewLabel);
        
        JButton btnFornecedores = new JButton("Fornecedores");
        btnFornecedores.setBorderPainted(false);
        btnFornecedores.setForeground(new Color(0, 0, 0));
        btnFornecedores.setBackground(new Color(153, 0, 255));
        btnFornecedores.setFont(new Font("Arial", Font.PLAIN, 16));
        btnFornecedores.setIcon(new ImageIcon(Main.class.getResource("/img/fornecedor.png")));
        btnFornecedores.setBounds(0, 88, 196, 41);
        panelLateral.add(btnFornecedores);
        
        JLabel lblSistema = new JLabel("Sistema de PDV");
        lblSistema.setFont(new Font("Tahoma", Font.BOLD, 14));
        lblSistema.setBounds(74, 48, 122, 41);
        panelLateral.add(lblSistema);
        
        JButton btnSobre = new JButton("Sobre");
        btnSobre.setBackground(new Color(153, 102, 204));
        btnSobre.setBorderPainted(false);
        btnSobre.setFont(new Font("Arial", Font.BOLD, 14));
        btnSobre.setIcon(new ImageIcon(Main.class.getResource("/img/icone.png")));
        btnSobre.setBounds(0, 477, 196, 41);
        panelLateral.add(btnSobre);
        
        JLabel lblNewLabel_1 = new JLabel("---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        lblNewLabel_1.setBounds(-14, 451, 210, 41);
        panelLateral.add(lblNewLabel_1);
        lblNewLabel_1.setForeground(new Color(102, 102, 255));
		
		if (db.testarConexao() == true) {
			System.out.println("Banco conectado");
			lblMysql.setText("MySQL Conectado");
			lblStatus.setForeground(Color.GREEN);
		}else {
			System.out.println("Erro na conexão");
			lblMysql.setText("MySQL Desconectado");
			lblStatus.setForeground(Color.RED);
		}
		atualizarData();
	}
	private void atualizarData() {
		DateTimeFormatter formatoData = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		String data = LocalDate.now().format(formatoData);
		/*Alterar o texto de lblData*/
		lblData.setText(data);
	}
}
