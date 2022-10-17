import 'package:random_words/random_words.dart';

//nimodo no agarra por que no hay version null-safety

extension on WordPair{
  String initials(){
    return "${this.first[0]}${this.second[0]}";
  }
}
void main() {
  WordPair word = WordPair.random();
  print(word.initials());

}
