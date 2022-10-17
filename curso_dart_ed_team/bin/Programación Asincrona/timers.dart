import 'dart:async';

//Permite implementar la progrmamación asincrona los importantes son futuros y streams.
void main() {
  //Constructor ()
  const duration = Duration(seconds: 6);
  //Primero imprir el programa.
  print('Inicio del programa');
  // Codigo despues del timer.
  Timer timer = Timer(duration, () {
    print("Se ejecuto el codigo luego de 2 segundos");
  });
  int controlador = 0;
  //Timer periodico cada 2 segundos.
  Timer timer2 = Timer.periodic(duration, (timer) {
    if (controlador >= 5){
      //cancelar la ejecución del timer.
      timer.cancel();

    } print("Se ejecuto el codigo luego de 2 segundos");
  });
  print("Se finalizo el programa.");
}
