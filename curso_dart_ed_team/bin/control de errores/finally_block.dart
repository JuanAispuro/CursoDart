void main() {
  try {
    int numero = 10;
    int numero2 = 2;

    if (numero2 == 0) {
      throw Exception("El numero2 no puede ser negativo");
    }
    print(numero / numero2);
  } catch (e) {
    print("Ingreso al bloque catch.");
    print(e);
  } finally {
    print("El proceso de division ha finalizado.");
  }
}
