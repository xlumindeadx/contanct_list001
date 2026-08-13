

//FORMULA : D = V * T

  import 'dart:io';

// Clase 
class Movimiento {
  double velocidad;
  double tiempo;

  // Constructor/clase 
  Movimiento({required this.velocidad, required this.tiempo});

  // Metodo 
  double calcularDistancia() {
    return velocidad * tiempo;
  }
}

void main() {
  // Pide la velocidad
  stdout.write("Ingrese la velocidad (m/s): ");
  String? velocidadEntrada = stdin.readLineSync();

  //  no se deje vacio
  if (velocidadEntrada == null || velocidadEntrada.trim().isEmpty) {
    print("Velocidad no válida.");
    return;
  }

  // Pedimos/tiempo 
  stdout.write("Ingrese el tiempo (s): ");
  String? tiempoEntrada = stdin.readLineSync();

  // Valida que no se deje vacio
  if (tiempoEntrada == null || tiempoEntrada.trim().isEmpty) {
    print("Tiempo no válido.");
    return;
  }

  //  de texto a numbers
  double velocidad = double.tryParse(velocidadEntrada) ?? 0;
  double tiempo = double.tryParse(tiempoEntrada) ?? 0;

  // creacion/objeto 
  Movimiento movimiento = Movimiento(
    velocidad: velocidad,
    tiempo: tiempo,
  );

  //  el resultado
  print("Distancia recorrida: ${movimiento.calcularDistancia()} m");
}