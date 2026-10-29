package view;

import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Toolkit;
import java.awt.Font;
import javax.swing.JLabel;
import javax.swing.SwingConstants;

public class Sobre extends JDialog {

	private static final long serialVersionUID = 1L;
	private final JPanel contentPanel = new JPanel();

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
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
			lblVersao.setBounds(0, 275, 93, 24);
			contentPanel.add(lblVersao);
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

}
