
void main() {
  Stack<int> pila1 = Stack<int>();
  pila1.push(10);
  pila1.push(20);
  pila1.push(30);
  pila1.push(40);

  //dynamic tiene errores más
  Stack<String> pila2 = Stack<String>();
  pila2.push("10");
  pila2.push("20");
  pila2.push("30");
  pila2.push("40");

  print(pila1.pop());
  pila1.show();
}

//{T} es cualquier tipo.
class Stack<T> {
  List<T> _stack = [];
  //Iteramos con función fecha.
  void show() => print(_stack);
  void push(T value) => _stack.add(value); //Regresa el valor\
  T pop() => _stack.removeLast(); //Retorna el stack removido.Stack
}