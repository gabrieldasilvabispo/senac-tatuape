package contas;

public class conta {
	protected String clientes;
	protected double saldo;
	
	
	//Construtor
	public conta() {
		System.out.println("Agência 0123");
	}
	
	//Método
		protected void exibirsaldo() {
			System.out.println("Saldo: R$ " + saldo);
			
	}
		void sacar(double valor) {
			saldo -= valor;
			
			System.out.println("Débito: R$ " + valor);
			
	}
		void  depositar(double valor) {
			saldo += valor;
			System.out.println("Crédito: R$ " + valor);
			
					
	}
			
		void transferir(conta destino, double valor) {
			this.sacar(valor);
			destino.depositar(valor);
			System.out.println("Transferência: R$ " + valor);
	}
		double soma(double cc1, double cc2) {
			double total = cc1 + cc2;
			return total;
}
}