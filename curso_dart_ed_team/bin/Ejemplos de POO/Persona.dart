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
  //Variable tipo privada con el (_) y solo puede ser de la clase persona.
  String _apellido = "";

  //Constructor
  Persona({this.nombre = "a", this.edad = 0});
  //Con factory creamos un nuevo constructor
  factory Persona.soloNombre(String x) {
    return Persona(
      nombre: x,
    );
  }
  //getters y setters
  /*get apellido {
      return _apellido;
    }
  //Le asigno un nuevo valor a la variable ya puesta
  set apellido(String nuevoApellido){
    _apellido = nuevoApellido;
   } */

  String get apellido => _apellido;
  set apellido(String nuevoApellido) => _apellido = nuevoApellido;

  //Tambien se pone de manera especifica.
  factory Persona.soloEdad(int y) {
    return Persona(edad: y);
  }

  void mostrar() {
    print(nombre);
    print(edad);
    print(_apellido);
  }

  //Tambien sirve en los métodos.
  void _mostrarNombre() {
    print(nombre);
  }
}

//Clase abstracta Trabajo
abstract class Trabajo {
  String trabajo = "";
  void mostrarTrabajo();
}

abstract class Carrera {
  String carrera = "";
  void mostrarCarrera();
}

class Docente {
  void CalificaExemanes() {
    print("Esta persona califica examenes.");
  }
}

class AuxiliarDocente {
  void ayudaEstudiantes() {
    print("Esta persona ayuda otros estudiantes en clases.");
  }
}

//Asi se hereda, va primero el with que el implements se hace referencia a la clase abstracta.
class Estudiante extends Persona with Docente, AuxiliarDocente implements Trabajo, Carrera {
  String colegio = "";
  String trabajo = "";
  String carrera = "";

  //super hace mencion a los metodos/propiedades de la clase padre
  Estudiante(
      {this.colegio = "",
      this.trabajo = "",
      this.carrera = "",
      String nombre = "",
      int edad = 0})
      : super(nombre: nombre, edad: edad);

  void mostrar() {
    print(colegio);
    //Accedemos a la clase padre.
    super.mostrar();
  }

  void mostrarTrabajo() {
    print(trabajo);
  }

  void mostrarCarrera() {
    print(carrera);
  }
}


class EstudianteEgresado extends Persona with Docente implements Trabajo, Carrera {
 String colegio = "";
  String trabajo = "";
  String carrera = "";

  //super hace mencion a los metodos/propiedades de la clase padre
  EstudianteEgresado(
      {this.colegio = "",
      this.trabajo = "",
      this.carrera = "",
      String nombre = "",
      int edad = 0})
      : super(nombre: nombre, edad: edad);

  void mostrar() {
    print(colegio);
    //Accedemos a la clase padre.
    super.mostrar();
  }

  void mostrarTrabajo() {
    print(trabajo);
  }

  void mostrarCarrera() {
    print(carrera);
  }
}
