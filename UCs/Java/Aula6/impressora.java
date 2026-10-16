package Impressora;

import java.io.OutputStream;// Biblioteca para enviar e receber dados
import java.net.Socket; // Importar biblioteca - que seria utilizada para conexão com a rede
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class impressora {

	public static void main(String[] args) {
		try {
			Socket Impressora = new Socket("10.26.45.49", 9100); 
			OutputStream saida = Impressora.getOutputStream();
			
			//ativar a impressora para receber comandos ESC/POS
			saida.write(new byte[] {0x18, 0x40});
			
			//Corpo do documento ===========
			
			
			//Imprimir data e hora
			LocalDateTime agora = LocalDateTime.now();
			DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
			
			//Variavel para armazenar a data e hora formatada
			String datahora = "Data: " + agora.format(formato) + "\n\n";
			
			
			saida.write(datahora.getBytes("CP850"));
			
			// Aumentar a fonte
			//0x00 (normal) 0x11 (2x) 0x22 (3x)...
			saida.write(new byte[] {0x1d, 0x21, 0x22});
			
			//Centralizar
			saida.write(new byte[] {0x18, 0x61, 0x01});
			
			//Negrito
			saida.write(new byte[] {0x18, 0x45, 0x01});
			
			saida.write("PDV\n".getBytes("CP850"));
			saida.write("Gabriel Bispo\n".getBytes("CP850"));
			saida.write("Senac Tatuape\n".getBytes("CP850"));
			
			
			//Avanço do papel
			//0x02(2 linhas) 0x03 (3 linhas)... 0x05(5 linhas)
			saida.write(new byte[] {0x10, 0x64, 0x05});
			
			//Corte do papel
			saida.write(new byte[] {0x10, 0x56, 0x00});
		
			//Fim do corpo do documento
			
			saida.flush();
			Impressora.close();
		
		} catch (Exception e) {
			System.out.println(e);
		} 

	}

}
