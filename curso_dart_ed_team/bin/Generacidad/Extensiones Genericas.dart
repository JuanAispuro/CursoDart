//La extension almacena cualquier tipo de dato.
extension MiLista<T> on List<T> {
  //Va de 3 en 3
  int get tripleLength => 3 * this.length;

  String concatElemento() {
    //Concatena los numeros y les agrega un {-}
    String x = "";
    for (int i = 0; i < this.length; i++) {
      x = "$x-${this[i]}";
    }
    return x;
  }
}

void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7];

  print(numeros.tripleLength);
  print(numeros.concatElemento());
}
