package seguros;

import contas.conta;

public class SeguroPessoaFisica extends conta{

	public static void main(String[] args) {
		SeguroPessoaFisica cc3 = new SeguroPessoaFisica();
		cc3.clientes = "Leandro Ramos";
		cc3.saldo = 25000;
		System.out.println("Cliente: " + cc3.clientes);
		cc3.exibirsaldo();
	}

}
