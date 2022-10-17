void main() {
  try{
  int numero = 10;
  int numero2 = 0;

   if(numero2 <= 0){
    throw Exception("El numero2 no puede ser negativo");
   }
  print(numero/numero2);  
  }catch(e){
    print(e);
  }
}