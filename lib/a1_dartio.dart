//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//CLASE 31 VIERNES 
import 'dart:io';

//clase persona 
class Person{
  String Name ;
  int Age;
  //EL constructor de la clase
  Person({required this.Name, required this.Age }); 

  //METODO PARA EVALUAR SI ES MAYOR DE EDAD
  bool isAnAdult(){
    return Age >= 18;
  }

  //METODO PRA MOSTRAR LOS RESULTADOS 
  void isAdult (){
    if (isAnAdult()){
      print("$Name es mayor de edad");
    }else{
      print("$Name es menor de edad");
    }
  }
}


void main(){
  //entradas
  stdout.write("ingrese su nombre: ");
  String? name =stdin.readLineSync() ??"Desconocido";
  //para barras espaciadoras 

  if (name == null|| name.trim().isEmpty){
    print("Nombre  no valido.");
    return;
  } 

    stdout.write("ingrese su edad: ");
  String? age =stdin.readLineSync() ??"0";

  int ageInt = int.tryParse(age)??0;

  Person person = Person(Name: name, Age: ageInt);

  //EJECUTAMOS  LOS COMPORTAMIENTOS DEL OBJECTO 
  person.isAdult();

  // //convertir la edad a entero 
  // var ageint=int.parse(age ??'0');

  // //var name ="carlos castro";
  // //var age = 30;
  // //´proceso/control
  // if (ageint >=18){
  //   print("Eres mayor de edad");
  // }else{
  //   print("Eres menor de edad");

  // }

  // //salidas
  // print("Nombre: $name, Edad: $ageint");
}