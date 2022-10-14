void main() {
  //Llamamos al constructor
  Persona persona1 = Persona(nombre: "Juan", edad: 21);
  persona1.mostrar();

  Persona persona2 = Persona.soloNombre("Valeria");
  Persona persona3 = Persona.soloEdad(22);

  persona2.mostrar();
  persona3.mostrar();
}

class Persona {
  //Pedirle ayuda al leo o al fierro, por que si lo pongo pelon no jala.
  String nombre = "";
  int edad = 0;
  //Constructor
  Persona({this.nombre, this.edad});
  //Con factory creamos un nuevo constructor
  factory Persona.soloNombre(String x) {
    return Persona(
      nombre: x,
    );
  }
  //Tambien se pone de manera especifica.
  factory Persona.soloEdad(int y) {
    return Persona(edad: y);
  }

  void mostrar() {
    print(nombre);
    print(edad);
  }
}
