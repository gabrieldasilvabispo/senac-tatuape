package view;

import java.awt.Color;
import java.awt.Desktop;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.net.URI;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import com.formdev.flatlaf.FlatDarkLaf;

public class Sobre extends JDialog {

	private static final long serialVersionUID = 1L;
	private final JPanel contentPanel = new JPanel();

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		//*FlatLightLaf.setup();*//
		FlatDarkLaf.setup();
		
		try {
			Sobre dialog = new Sobre();
			dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
			dialog.setVisible(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Create the dialog.
	 */
	public Sobre() {
		setFont(new Font("Dialog", Font.BOLD, 13));
		setTitle("Sobre");
		setIconImage(Toolkit.getDefaultToolkit().getImage(Sobre.class.getResource("/img/icone.png")));
		setBounds(100, 100, 272, 371);
		getContentPane().setLayout(null);
		contentPanel.setBounds(0, 0, 256, 299);
		contentPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
		getContentPane().add(contentPanel);
		contentPanel.setLayout(null);
		{
			JLabel lblGBPDV = new JLabel("GB - PDV");
			lblGBPDV.setHorizontalAlignment(SwingConstants.CENTER);
			lblGBPDV.setFont(new Font("Arial", Font.BOLD, 15));
			lblGBPDV.setBounds(73, 11, 93, 31);
			contentPanel.add(lblGBPDV);
		}
		{
			JLabel lblDescricao = new JLabel("Sistema para gestão de estoque e PDV");
			lblDescricao.setFont(new Font("Arial", Font.BOLD, 12));
			lblDescricao.setBounds(10, 35, 221, 42);
			contentPanel.add(lblDescricao);
		}
		{
			JLabel lblAutor = new JLabel("Autor: Gabriel Bispo");
			lblAutor.setFont(new Font("Arial Black", Font.PLAIN, 13));
			lblAutor.setBounds(47, 67, 161, 48);
			contentPanel.add(lblAutor);
		}
		{
			JLabel lblVersao = new JLabel("Versão 1.0");
			lblVersao.setFont(new Font("Arial", Font.BOLD, 14));
			lblVersao.setBounds(99, 275, 73, 24);
			contentPanel.add(lblVersao);
		}
		
		JLabel lblMit = new JLabel("");
		lblMit.setIcon(new ImageIcon(Sobre.class.getResource("/img/mit-licença.png")));
		lblMit.setBounds(0, 241, 64, 58);
		contentPanel.add(lblMit);
		
		JLabel lblGit = new JLabel("");
		lblGit.setIcon(new ImageIcon(Sobre.class.getResource("/img/github.png")));
		lblGit.setBounds(214, 257, 32, 42);
		contentPanel.add(lblGit);
		
		JLabel lblRepositorio = new JLabel("github.com/gabrieldasilvabispo");
		lblRepositorio.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				link("https://github.com/gabrieldasilvabispo");
			}
		});
		lblRepositorio.setForeground(Color.BLUE);
		lblRepositorio.setBounds(47, 146, 147, 24);
		contentPanel.add(lblRepositorio);
		
		JButton btnOk = new JButton("OK");
		btnOk.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			//Fechar a tela sobre
				dispose();
			
			}
		});
		btnOk.setBounds(89, 241, 89, 23);
		contentPanel.add(btnOk);
		setLocationRelativeTo(null);
	}
		
		private void link (String url){
			//obtem o desktop do cliente
			Desktop desktop = Desktop.getDesktop();
				
		//uso do try-catch para exceções
		try {
			URI uri = new URI (url); 
			
			//abrir o link no navegador
			desktop.browse(uri);		
		} catch (Exception e) {
			System.out.println(e);
		}	
      }
		

		{
			JPanel buttonPane = new JPanel();
			buttonPane.setBounds(0, 299, 256, 33);
			buttonPane.setLayout(new FlowLayout(FlowLayout.RIGHT));
			getContentPane().add(buttonPane);
			
			
			{
				JButton okButton = new JButton("OK");
				okButton.setActionCommand("OK");
				buttonPane.add(okButton);
				getRootPane().setDefaultButton(okButton);
				
			}
		}
	}

