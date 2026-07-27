/**
Arduino WEB Server
@author Gabriel Da Silva Bispo 

*/

// bibliotecas usadas para este projeto
#include <SPI.h>
#include <Ethernet.h>

byte mac[6] = { 0x90, 0xA2, 0xDA, 0xBC, 0xFE, 0x15 };

EthernetServer server(80);  // 80 é a porta  http

// documento HTML
const char pagina[] PROGMEM = R"HTML(
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arduino WEB Server</title>
    <style>
        body {
            font-family: sans-serif;
            text-align: center;
        }
    </style>
</head>

<body>
    <h1>Hello Arduino</h1>
</body>

</html>
)HTML";

void setup() {
  Serial.begin(9600);
  Ethernet.begin(mac);
  server.begin();
  Serial.println("Arduino WEB server:");
  Serial.print("IP: ");
  Serial.println(Ethernet.localIP());  //identifica o IP
}

void loop() {

  // se houver uma requisição (alguem tentando se conectar)
  EthernetClient client = server.available();

  //navegador de internet fez uma requisição (se existir um cliente)
  if (client) {
    // ler requisição
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
