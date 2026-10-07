package POO;


public class Brasilia {

	public static void main(String[] args) {
	Carro brasilia = new Carro(1998, "Amarela");
	System.out.println("Carro Brasilia");
	System.out.println("Ano: " + brasilia.ano);
	System.out.println("Cor: " + brasilia.cor);
	
	brasilia.ligar();
	brasilia.acelerar();
	brasilia.desligar();

	}

}
