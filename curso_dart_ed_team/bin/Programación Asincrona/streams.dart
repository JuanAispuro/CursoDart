//async* es de tipo stream
//Se crea un evento futuro.
Stream<int> contador(int x) async* {
  for (int i = 0; i < x; i++) {
    await Future.delayed(Duration(seconds: x), () {});
    //yield retorna el valor que esta dentro del Stream
    yield i;
  }
}

//Es un contador que se ejecuta cada segundo.

void main() {
  //listen escucha el Stream.
  final x = contador(5).listen((event) {
    print("El valor del stream es: $event");
  });
  //evento que se la pasara escuchando
}
