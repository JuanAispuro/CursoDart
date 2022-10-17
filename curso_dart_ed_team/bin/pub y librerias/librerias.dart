import 'package:random_string/random_string.dart';
import 'dart:math' show Random;

void main() {
  print(randomBetween(7, 100000)); //Numero random entre esos numeros
  print(randomNumeric(6)); //Numero random con 6 digitos
  print(randomString(10)); //Caracter random entre 10 digitos

  
}
