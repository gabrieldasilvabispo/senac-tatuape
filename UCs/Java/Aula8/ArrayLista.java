package Vetor;

import java.util.ArrayList;

public class ArrayLista {

	public static void main(String[] args) {
		//Criando o ArrayLista
		ArrayList<String> contatos = new ArrayList<>();
		
		//Inserir dados
		contatos.add("Gabriel Bispo");
		contatos.add("11 01234-1234");
		contatos.add("gabrieldasilvabispo@gmail.com");
		
		contatos.add("Sirlene Sanches");
		contatos.add("11 01234-1010");
		contatos.add("sirlenesanches@gmail.com");
		
		contatos.add("Leandro Gusmão");
		contatos.add("11 01234-1222");
		contatos.add("leandro@gmail.com");
		
		
		//Mostrar o Array no ArrayLista
		System.out.println("Tamanho do Array: " + contatos.size());
		System.out.println(contatos);
		
		//Puxar indice do numero 5
		System.out.println("Email Sirlene Sanches: " + contatos.get(5));
		
		System.out.println("");
		System.out.println("----------------");
		
		for (int i = 0; i < contatos.size(); i++) {
			System.out.println(contatos.get(i));
			
		}
	}

}
