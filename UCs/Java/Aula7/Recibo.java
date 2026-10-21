
package Recibo;

import java.io.OutputStream;
import java.net.Socket;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Recibo {

	
	public static void main(String[] args) {
		 // IP da impressora na rede local e porta padrão RAW (9100)
        String ipImpressora = "10.26.45.43";
        int portaImpressora = 9100;
 
        try {
            // 1. Conecta com a impressora via Socket
            System.out.println("Conectando à impressora no IP " + ipImpressora + "...");
            Socket impressora = new Socket(ipImpressora, portaImpressora);
            OutputStream saida = impressora.getOutputStream();
 
            // 2. Inicializa/reseta a impressora (ESC @)
            saida.write(new byte[]{0x1B, 0x40});
           
 
            // 4. Estilo do título
            saida.write(new byte[]{0x1D, 0x21, 0x22});  // fonte expandida (GS ! 0x22)
            saida.write(new byte[]{0x1B, 0x61, 0x01});  // centralizar (ESC a 0x01)
            saida.write(new byte[]{0x1B, 0x45, 0x01});  // negrito (ESC E 0x01)
 
            saida.write("Empresa\n".getBytes("CP850"));     // '\n' é obrigatório
 
            saida.write(new byte[] {0x1B, 0x61, 0x01});
            saida.write(new byte[] {0x1D, 0x21, 0x00});
            saida.write("Empresa sicial.com de informatica LTDA-ME\n".getBytes("CP850"));
            
            
            
            saida.write(new byte[] {0x1B, 0x45, 0x00});
            saida.write(new byte[] {0x1D, 0x21, 0x00});
            saida.write(new byte[] {0x1D, 0x21, 0x00});
            saida.write("Rua dos Equipamentos, 9 - Sobreloja 101 e 102\n".getBytes("CP850"));                     
            saida.write("Centro - 20000-000- Rio de Janeiro-RJ\n".getBytes("CP850"));
            saida.write("(21) 1111-2222/ 3344-5566\n".getBytes("CP850"));      
            
            
            saida.write(new byte[] 	{0x1B, 0x61, 0x00});
            saida.write("CNPJ: 11.111.111/0001-11           IE:11.222.33\n".getBytes("CP850"));
            saida.write("Cliente: Consumidor Final\n".getBytes("CP850"));   
            
            
            saida.write("01/04/2023 10:15\n".getBytes("CP850"));
            saida.write(new byte[]{0x1B, 0x45, 0x01});
            saida.write(new byte[]{0x1D, 0x21, 0x22});
            saida.write(new byte[]{0x1D, 0x21, 0x00});
            saida.write("                                  N°000001\n".getBytes("CP850"));
            saida.write("--------------------------------------------------------\n".getBytes("CP850")); 
            
            
            saida.write(new byte[]{0x1D, 0x21, 0x00});            
            saida.write("CODIGO            DESCRIÇÃO         GARANTIA\n".getBytes("CP850"));
            saida.write("                	QTD X UNIT       R$ VALOR\n".getBytes("CP850"));
            saida.write("--------------------------------------------------------\n".getBytes("CP850"));
            
            saida.write(new byte[]{0x1B, 0x45, 0x01});
            saida.write("05001 HD 500GB SEAGATE MOMENUS 7200.4   3M\n".getBytes("CP850"));
            saida.write("                   1 X 250,00         250,00         \n".getBytes("CP850"));
            saida.write("06001 MEMORIA 4GB DDR3 133MHZ - MARKVISION     3M\n".getBytes("CP850"));
            saida.write("                  1 X 70,00          70,00\n".getBytes("CP850"));
            saida.write("--------------------------------------------------------\n".getBytes("CP850"));
            
            saida.write("TOTAL DA NOTA R$                    320,00\n".getBytes("CP850"));
            saida.write("VALOR RECEBIDO R$                   400,00\n".getBytes("CP850"));
            saida.write("TROCO R$                            80,00\n".getBytes("CP850"));
            saida.write("FORMA DE PGTO.: Á VISTA\n".getBytes("CP850"));
            
            saida.write("DATA DE PGTO      R$ VALOR          TIPO PGTO\n".getBytes("CP850"));
            saida.write("01/04/2013         320,00             DINHEIRO\n".getBytes("CP850"));
            saida.write("------------------------------------------------\n".getBytes("CP850"));
            saida.write("VENDEDOR(A): VENDEDOR 1\n".getBytes("CP850"));
            saida.write("------------------------------------------------\n".getBytes("CP850"));
            
            saida.write("Números de Série:\n".getBytes("CP850"));
            saida.write("6Y080L0030102, 508XHVDBDB1808\n".getBytes("CP850"));
            
            
            saida.write("Recebi a(s) mercadoria(s) acima descrita(s), concordando\n".getBytes("CP850"));
            saida.write("plenamente com os prazos e condições de garantia.\n".getBytes("CP850"));
            
            saida.write(" --------------------------------------------------\n".getBytes("CP850"));
            saida.write("   ASSINATURA DO CLIENTE\n".getBytes("CP850"));
            saida.write("-----------------------------------------------------:\n".getBytes("CP850"));
            
            
            saida.write("* OBRIGADO E VOLTE SEMPRE*\n".getBytes("CP850"));
            
            
            saida.write(new byte[]{0x1B, 0x64, 0x05});
            saida.write(new byte[]{0x1D, 0x56, 0x00});
            
            // 7. Descarrega o buffer e encerra a conexão
            saida.flush();
            saida.close();
            impressora.close();
 
            System.out.println("Dados enviados com sucesso! Cupom impresso e cortado.");
 
        } catch (Exception e) {
            System.err.println("Erro ao se comunicar com a impressora: " + e.getMessage());
            e.printStackTrace();
        }
    }

	}


