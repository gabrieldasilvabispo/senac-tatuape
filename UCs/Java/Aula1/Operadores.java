
package CursoJava;


public class Operadores {

	public static void main(String[] args) {
	
		double i = 10;
		
		
		System.out.println("Operadores aritméticos e Atribuições");
		System.out.println("Exemplos: ");
		System.out.println("i = " + i); // Exibir o valor da variável
		System.out.println(i + " + 5 | = " + (i+5) );
		System.out.println(i + " + 5 | = " + (i-5) );
		System.out.println(i + " + 5 | = " + (i*5) );
		System.out.println(i + " + 5 | = " + (i/5) );
		System.out.println(i + " + 5 | = " + (i%5) );
		
		System.out.println(i + " + 5 | = " + (i += 5) );
		System.out.println(i + " + 5 | = " + (i -= 5) );
		System.out.println(i + " + 5 | = " + (i *= 5) );
		System.out.println(i + " + 5 | = " + (i /= 5) );
		
		i++;
		System.out.println("i++    | " + i );
		
		i--;
		System.out.println("i--    | " + i );
		
		
		
	}

}
