package POO;
public class Ferrari {
	public static void main(String[] args) {
		Carro ferrari = new Carro();
		
		ferrari.ano = 2026;
		ferrari.cor = "Vermelha";
		
		System.out.println("Carro Ferrari");
		System.out.println("ano: " + ferrari.ano);
		System.out.println("Cor: " + ferrari.cor);
		
		ferrari.ligar();
		ferrari.acelerar();
		
	}

}
