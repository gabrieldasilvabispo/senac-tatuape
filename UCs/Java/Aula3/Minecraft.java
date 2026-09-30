package POO;

public class Minecraft {

	public static void main(String[] args) {
	Bloco Minecraft = new Bloco();
		
		
		Minecraft.resistencia = 8;
		Minecraft.textura = "Duro";
	
		System.out.println("Bloco Minecraft");
		System.out.println("Resistencia: " + Minecraft.resistencia);
		System.out.println("Textura: " + Minecraft.textura);
		
		Minecraft.construir();
		Minecraft.minerar();
		Minecraft.craftar();

	}

}
