// import 'dart:io';

import 'dart:io';

class Temperatura {
  double temperaturaC;

  // Constructor
  Temperatura ({required this.temperaturaC});

  // Método para calcular conversión
  double calcularFahrenheit() {
  return (temperaturaC * 1.8) + 32;
  }

  // Método para mostrar resultado
  void conversion() {
    print("La temperatura en Fahrenheit es: ${calcularFahrenheit()}");
  }
}

void main() {

  // Entradas
  stdout.write("Ingrese la temperatura (°C) que desea convertir: ");
  String temperatura = stdin.readLineSync() ?? '0';

  // Conversión
  double temperaturaC = double.tryParse(temperatura) ?? 0;

  // Crear objeto
  Temperatura temperatura1 = Temperatura(temperaturaC: temperaturaC);

  temperatura1.conversion();
}