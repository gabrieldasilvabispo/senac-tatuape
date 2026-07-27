/**
Arduino IOT
@author Gabriel Da Silva Bispo 

*/

// bibliotecas usadas para este projeto
#include <SPI.h>
#include <Ethernet.h>

byte mac[6] = { 0x90, 0xA2, 0xDA, 0xBC, 0xFE, 0x15 };
int led = 8;

EthernetServer server(80);  // 80 é a porta  http

// documento HTML
const char pagina[] PROGMEM = R"HTML(
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arduino </title>
    <style>
        body {
            font-family: sans-serif;
            text-align: center;
        }



        a {
            text-decoration: none;
            font-weight: bold;
            padding: 12px;
            width: 100px;
            display: inline-block;
            color: #ffffff;


        }

        .on {
            background-color: #3498db;
        }

        .off {
            background-color: #718c8d;


        }
    </style>
</head>

<body>
    <h1>Arduino Iot</h1>
    <h2>Controle do LED</h2>
    <P>Exemplo 1: Controle de dispositivos</P>
    <a hred="/?led-on" class="on">ON</a>
    <a href="/?led-off" class="off">OFF</a>



</body>

</html>
)HTML";

void setup() {
  
  pinMode(led, OUTPUT);
  Serial.begin(9600);
  Ethernet.begin(mac);
  server.begin();
  Serial.println("Arduino IOT:");
  Serial.print("IP: ");
  Serial.println(Ethernet.localIP());  //identifica o IP
}

void loop() {

  // se houver uma requisição (alguem tentando se conectar)
  EthernetClient client = server.available();

  //navegador de internet fez uma requisição (se existir um cliente)
  if (client) {

    // ler requisição e armazena o valor na string
    String request = "";  // variavel usada para armazenar uma string
    //enquanto houver caracteres para recebimento
    while (client.available()) {
      char c = client.read();  //ler o caractere
      request += c;            // soma e atribui montando a frase(comando)
    }

    //execução dos comandos recebidos
    //se receber o comando /?led on
    if (request.indexOf("GET /?led-on") >= 0) {
      digitalWrite(led, HIGH);
    }

    //se receber o comando /?led-off
    if (request.indexOf("GET /?led-off") >= 0) {
      digitalWrite(led, LOW);
    }
    if (client.available()) {
      client.read();
    }
    // entregar uma copia do documento html
    // cabeçalho http (protocolo de transferencia de hipertexto)
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("Connection: close");
    client.println();  //importante

    //documento html (memoria)
    client.print((__FlashStringHelper*)pagina);

    // encerrar a conexão
    delay(1);  // pequeno tempo para esvaziar o buffer(memoria)
    client.stop();
  }

}


