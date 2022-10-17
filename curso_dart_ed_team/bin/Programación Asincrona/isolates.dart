import 'dart:async';
import 'dart:isolate';

Isolate? isolate;

void main() {
  ReceivePort receivePort = ReceivePort();

  //Ejecutar un metodo en el hilo secundario.
  //Creamos el hilo.
  Isolate.spawn((crearIsolate), receivePort.sendPort).then((value) {
    print(value);
    //Escuchamos el mensaje
    receivePort.listen((message){
      print("Se estan escuchando datos");
      print(message);
      value.kill();
    });
  });

//ReceivePort recibir
//Sendport Enviar
//Metodo
void crearIsolate(SendPort sendPort) {
  //Crear un hilo secundario.
  print("Estos datos se estan enviando desde el segundo isolate");
}