import 'dart:html';
import 'dart:math';

import 'package:test/test.dart';

Object division(int x, int y) {
  try {
    if (y == 0) {
      throw "Division entre cero";
    }
    return (x / y + 1).toString();
  } catch (e) {
    return e;
  }
}

void main() {
  group("Algoritmo  de division", () {
    //(){} función anonima, causal prueba, matcher resultado del valor actual.
    test("division entre cero", () {
      //expect(casual, matcher);;
      expect(division(5, 0), "Division entre cero.");
    });

    test("division entre no cero", () {
      //expect(casual, matcher);;
      expect(division(10, 5), 2);
    });

    test("division entre entero", () {
      expect(division(15, 6), "2.8");
    });
  });
  
}
