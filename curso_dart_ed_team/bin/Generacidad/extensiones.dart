//Extension (on) nombre donde se aplicara.
extension on String{ 
  //metodo
  //Extensiones hace esto pero llamando extesiones.
  //Sin manadr como tal un valor, sino automatico seria como
  int ContarPuntos(){
    int contador = 0;
    for(int i = 0; i<this.length; i++){
      if(this[i] == '.'){
        contador++;
      }
    }
    return contador;
  }
  
}
void main() {
  String nombrePuntos = "Juan..................";
  //Quiero imprimir cuantos puntos tiene.
  print(nombrePuntos.ContarPuntos());
}
