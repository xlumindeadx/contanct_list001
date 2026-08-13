//FORMULA :F = (C * 1.8) + 32

import 'dart:io';

// Clase 
class Temperatura {
  double celsius;

  // Constructor de la clase
  Temperatura({required this.celsius});

  // metodo 
  double convertirAFahrenheit() {
    return (celsius * 1.8) + 32;
  }
}

void main() {
  // Pide/temperatura
  stdout.write("Ingrese la temperatura en °C: ");
  String? temperaturaEntrada = stdin.readLineSync();

  //vacios
  if (temperaturaEntrada == null ||
      temperaturaEntrada.trim().isEmpty) {
    print("Temperatura no válida.");
    return;
  }

  // temperatura a numeros
  double celsius = double.tryParse(temperaturaEntrada) ?? 0;

  //  objeto temperatura
  Temperatura temperatura = Temperatura(celsius: celsius);

  //  temperatura convertida
  print("Temperatura en °F: ${temperatura.convertirAFahrenheit()}");
}