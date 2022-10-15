import 'Persona.dart'; //Importamos la clase persona de persona.dart

void main() {
  Persona persona1 = Persona(nombre: "Juan", edad: 21);
  // persona1.mostrar();

  // print(persona1.nombre);

  print(persona1.apellido);
  persona1.apellido = "Sanchez";
  
}
