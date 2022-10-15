void main() {
  //override {Una clase, objeto o dato del override no esta bajo el control del programador.}

  //Depreated {La clase, objeto o dato que tiene el decrapted esta obsoleto.}

  @override //Dar referencia al programador que no se tiene el control solo se utiliza.
  void Holamundo() {
    print("Hola mundo");
  }
  //Metadato todo, son una clase especial para dar referencias a otros programadores
  // y guiarse.

  @Todo("Juan", "Realizar una multi aquí.")
  void multiplicacion() {}

  //Se ocupa el constructor que es el ().
  @Elimiar()
  void Eliminarcodigo(){}
}

class Todo {
  final String name;
  final String description;

  //Constructor con constante, lo cual logra hacerse como metadato.
  const Todo(this.name, this.description);
}

class Elimiar {
  const Elimiar();
}
