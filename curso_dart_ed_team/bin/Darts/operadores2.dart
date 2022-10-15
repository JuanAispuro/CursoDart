void main() {
  //Operadores aritmeticos
  int numero = 10;
  numero++; //Incrementa numero en cada momento
  print(numero);

  numero = numero + 5;
  //Operador aritmetico de asignacion
  numero += 5;
  print(numero);

  //Operadores logicos
  int numero2 = 20;
  /* if (numero > numero2) {
      print("numero es mayor a numero2 ");
    } else {
      print("numero2 es mayor que numero.");
    }*/

  //otra forma de usar un if
  numero > numero2
      ? print("numero es mayor a numero2 ")
      : print("numero2 es mayor que numero.");

  //Operador  asignacion con comparación entre elementos.
  //Valida si una variable pertenece a un tipo de objeto.
  if (numero is String) {
    print("numero es un String");
  } else {
    print("numero no es un String");
  }
  //Poner el ? para que agarre sin tener que ponerle un valor directo.
  String? nombre;
  
  print(nombre ?? "No hay nombre");
}
