package Vetor;

public class Vetor1 {

	
	public static void main(String[] args) {
		//Criando o Array
		String[] carros = {"ferrari", "camaro", "fusca", "kombi", "brasilia", "porche"};
		
		//Ver o tamanho do Array
		System.out.println("Tamanho do Array: " + carros.length);
		
		//Ver o que esta na posição 3
		System.out.println("Carro: " + carros[3]);
		
		//Modificar o Array
		carros[3] ="gol";
		System.out.println("Carro: " + carros[3]);
		
		
		System.out.println("");
		System.out.println("------------");
		
		//
		System.out.println("Carros");
		for (int i = 0; i < carros.length; i++) {
			System.out.println(carros[i]);
			
		}
		

	}

}
