
package CursoJava;

public class Atividades {

	
	public static void main(String[] args) {
		// Atividade 1
		
		System.out.println("");
		System.out.println("Atividade 1");
		System.out.println("");
		
		double f = 86;
		double c = (5 * (f - 32)) / 9;
		
		
		System.out.println("Temperatura em Fahrenheit:" + f);
		System.out.println("Temperatura em Celsius:" + c);
		
		
		// Atividade 2
		
		System.out.println("");
		System.out.println("Atividade 2");
		System.out.println("");
		
		double alcool = 2.5;
		double gasolina = 2.5;
		
		System.out.println("Preço do alcool " + alcool);
		System.out.println("Preço da Gasolina " + gasolina);
		
		
		if (alcool <= 0.7 * gasolina) {
			System.out.println("Abasteça com Alcool.");
		} else {
			System.out.println("Abasteça com Gasolina.");
		}
		
		
		// Atividade 3
		
		System.out.println("");
		System.out.println("Atividade 3");
		System.out.println("");
 
		double peso = 50.0;
		double altura = 2.75;
		double imc;
 
		imc = peso / (altura * altura);
 
		System.out.println("IMC: " + imc);
 
		if (imc < 18.5) {
		System.out.println("Abaixo do peso");
		} else if (imc <= 24.9) {
		System.out.println("Peso ideal");
		} else if (imc <= 29.9) {
		System.out.println("Levemente acima do peso");
		} else if (imc <= 34.9) {
		System.out.println("Obesidade grau 1 ");
		} else if (imc <= 39.9) {
		System.out.println("Obesidade grau 2 (severa)");
		} else {
		System.out.println("Obesidade grau 3 (mórbida)");
		}
		
			
		
	}

}
