import 'dart:async';

//Asi se pone.
void main() async {
  //Clase future tener elementos dentro del metodo y esperar a que finalice para otras cosas.
  // async es tiene tiempo de espera.
  //Aqui pondremos la respuesta
  String responsel = "";
  Future<String?> timer() async {
    //Funciona como un timer
    Future.delayed(Duration(seconds: 2), () {
      responsel = "En el futuro";
    });
    return responsel;
  }

  print("Se inicia el programa.");
  //realizamos la asignación cuando el timer finalice.
  timer().then((value) => print(value));
  print("Se finalizo el programa");
}
