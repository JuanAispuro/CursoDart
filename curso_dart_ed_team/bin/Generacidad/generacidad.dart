void main() {
//   //No agarra por que de forma normal la lista es de valores dinamicos
  List lista = [1, 2, 3];

  dynamic elemento;
  // print(elemento);
  // print(lista is List<int>
  Estacion estacion = Estacion.soleado;
  print(estacion);
  T leerEstaciones<T>(String str, Iterable<T> estaciones) {
    return estaciones
        .firstWhere((element) => element.toString().split('.')[1] == str);
  }
  //Aqui me retornara un elemento tipo estacion y la coleccion de estaciones.
  //Encontrara el estado.lluvioso y como la satisface regresa la estacion.lluvioso.

  estacion = leerEstaciones<Estacion>('lluvioso', Estacion.values);
  print(estacion);
}

enum Estacion { soleado, lluvioso, nublado }
