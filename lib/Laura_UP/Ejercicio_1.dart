import 'dart:io';

// Clase Automovil
class Automovil {
  double velocidad;
  double tiempo;

  // Constructor
  Automovil({required this.velocidad, required this.tiempo});

  // Método para calcular la distancia
  double calcularDistancia() {
    return velocidad * tiempo;
  }

  // Método para mostrar el resultado
  void mostrarDistancia() {
    print("La distancia recorrida es: ${calcularDistancia()} metros.");
  }
}

void main() {
  // Entrada de la velocidad
  stdout.write("Ingrese la velocidad del automóvil (m/s): ");
  String velocidadTexto = stdin.readLineSync() ?? "0";

  if (velocidadTexto.trim().isEmpty) {
    print("Velocidad no válida.");
    return;
  }

  // Entrada del tiempo
  stdout.write("Ingrese el tiempo (segundos): ");
  String tiempoTexto = stdin.readLineSync() ?? "0";

  if (tiempoTexto.trim().isEmpty) {
    print("Tiempo no válido.");
    return;
  }

  // Conversión a números
  double velocidad = double.tryParse(velocidadTexto) ?? 0;
  double tiempo = double.tryParse(tiempoTexto) ?? 0;

  // Crear objeto
  Automovil automovil = Automovil(
    velocidad: velocidad,
    tiempo: tiempo,
  );

  // Mostrar resultado
  automovil.mostrarDistancia();
}
