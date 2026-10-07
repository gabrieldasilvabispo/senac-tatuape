package POO;

public class Embraer {

	public static void main(String[] args) {
		Aviao embraer = new Aviao();
		
		embraer.ano = 2000;
		embraer.cor = "Azul";
		embraer.envergadura = 11;
		
		System.out.println("Avião Embraer");
		System.out.println("Ano: " + embraer.ano);
		System.out.println("Cor: " + embraer.cor);
		System.out.println("Envergadura: " + embraer.envergadura);
		
		embraer.aterrizar();
		embraer.desligar();
	}

}
