/**
pisca LED
@author Gabriel Bispo
*/

void setup() {
  pinMode(13, OUTPUT);  // configurar o pino 13 como saida
}

void loop() {
  digitalWrite(13, LOW);
  delay(1000);
  digitalWrite(13, LOW);
  delay(1000);
}
