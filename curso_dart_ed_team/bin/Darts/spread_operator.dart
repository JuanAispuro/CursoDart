void main() {
  List<int> pares = [2, 4, 6, 8, 10];
  List<int> impares = [1, 3, 5, 7, 9];

  List<int> numeros = [];

  numeros.addAll(pares);
  numeros.addAll(impares);
  // print(numeros);
  //Forma para hacer lo de numeros addall, pero con spread.
  List<int> spread = [...impares, ...pares, 11, 12, 13, 14, 15];
  print(spread);
  //Juntar spread con if/for.
  // if
  List<int> spread2 = [
    ...pares,
    if (impares.length > 5) ...impares,
    11,
    12,
    13,
    14,
    15
  ];

  print(spread2);

  // for
  List<int> spread3 = [
    ...impares,
    for (int i = 0; i < pares.length; i++)
      if (pares[i] > 5) pares[i],
    11,
    12,
    13,
    14,
    15
  ];
  print(spread3);
}
