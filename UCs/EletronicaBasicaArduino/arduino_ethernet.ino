/**
Arduino Ethernet (configurações basicas de rede)
@author Gabriel Da Silva Bispo 

*/

// bibliotecas usadas para este projeto
#include <SPI.h>
#include <Ethernet.h>

// pinos digitais que não podem ser usados: 0,1,4,10,11,12 e 13

// gerar um endereço fisico(MAC ADDRESS) para este placa
// htpps://ssl.crox.net/arduinomac
byte mac[6] = { 0x90, 0xA2, 0xDA, 0xBC, 0xFE, 0x15 };

// Instanciar (criar ) um servidor
EthernetServer server(80);  // 80 é a porta  http


void setup() {
  Serial.begin(9600);
  // As linhas abaixos iniciam o servidor e atribui automaticamente um IP para o arduino
  Ethernet.begin(mac);  // atribui endereço mac ao shield Ethernet
  server.begin();       // inicia o servidor

  // As linhas abaixo exibem o IP da placa Arduino
  Serial.println("Arduino Ethernet Shield:");
  Serial.print("IP: ");
  Serial.println(Ethernet.localIP());  //identifica o IP
  Serial.print("Mascara: ");
  Serial.println(Ethernet.subnetMask());//identifica a mascara de rede
  Serial.print("Gateway: ");
  Serial.println(Ethernet.gatewayIP());//identifica o gateway
  Serial.print("DNS: ");
  Serial.println(Ethernet.dnsServerIP());//identifica o DNS
}

void loop() {
  // put your main code here, to run repeatedly:
}
