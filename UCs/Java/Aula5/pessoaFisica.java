package contas;

public class pessoaFisica {

	public static void main(String[] args) {
		conta cc1 =  new conta();
		
		cc1.clientes = "Gabriel Bispo";
		cc1.saldo = 10000;
		
		
		System.out.println("Cliente: " + cc1.clientes);
		cc1.exibirsaldo();
		
		cc1.sacar(1000);
		cc1.exibirsaldo();
	
		//Novo Cliente
		
		System.out.println("");
		System.out.println("---------------");
		
		conta cc2 = new conta();
		cc2.clientes = "Leandro Gusmão";
		cc2.saldo = 20000;					

		System.out.println("Cliente: " + cc2.clientes);
		cc2.exibirsaldo();
		
		cc2.depositar(800);
		cc2.exibirsaldo();
	
		
		System.out.println("");
		System.out.println("---------------");
		
		System.out.println("Transferência");
		System.out.println("Cliente: " + cc2.clientes);
		System.out.println("Favorecido: " + cc1.clientes);
		
		cc2.transferir(cc1, 2000);
		
		System.out.println("");
		System.out.println("Cliente: " + cc2.clientes);
		cc2.exibirsaldo();
		
		System.out.println("Cliente: " + cc1.clientes);
		cc2.exibirsaldo();
		
		
		System.out.println("");
		System.out.println("---------------");
		
		System.out.println("Relatorio Gerencial");	
		
		conta gerente = new conta();
		double relatorio = gerente.soma(cc1.saldo, cc2.saldo);
		System.out.println("Saldo total nas contas " + relatorio);
		
		
	}
		
		
	}



