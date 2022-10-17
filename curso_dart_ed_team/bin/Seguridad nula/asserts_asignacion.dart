void main(){
    int? docena = 10;
     //No permite pero si ponemos así el (?) si agarrara.
     List<int?> primos = [1,2,3,4,5, null];
     
     // con el (!) demustra que no va a ser nulo al final.
     var suma = 10 + docena!;
     
     var suma2 = sumar(8,9);
     print(suma2);
     
     Curso curso1 = Curso();
     curso1.nombre = "Dart desde cero";
     curso1.mostrar();
   }
   
   class Curso{
     // las variables pueden ser nullas
    late String _nombre;
     set nombre(String x)=> _nombre =x;
     
     void mostrar(){
       print(_nombre);
     }
    
     //Metadato required
  
   }
   
   
   
   //Se puede poner en una función como a los parametros.
   //Si x es nulo entonces retorna nulo, sino la suma de x + y
   int? sumar(int? x, int y){
     if(x ==null){
       return null;
     }else{
       return x + y;
     }
   }