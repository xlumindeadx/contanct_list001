import 'dart:io';

// Clase empleado
class Empleado {
  String nombre;
  int horasLaboradas;
  double tarifaHora;

  // Constructor
  Empleado({
    required this.nombre,
    required this.horasLaboradas,
    required this.tarifaHora,
  });

  // Método para calcular total
  double calcularDevengado() {
    return horasLaboradas * tarifaHora;
  }

  // Método para imprimir resultados
  void imprimirReporte() {
    print("========= Reporte =========");
    print("Nombre del empleado: $nombre");
    print("Horas laboradas: $horasLaboradas");
    print("Total devengado: ${calcularDevengado()}");
  }
}

void main() {

  // Entradas
  stdout.write("Ingrese el nombre del empleado: ");
  String nombre = stdin.readLineSync() ?? "";

  stdout.write("Ingrese las horas laboradas: ");
  String horasTexto = stdin.readLineSync() ?? "0";

  stdout.write("Ingrese la tarifa por hora: ");
  String tarifaTexto = stdin.readLineSync() ?? "0";

  // Conversiones
  int horasLaboradas = int.tryParse(horasTexto) ?? 0;
  double tarifaHora = double.tryParse(tarifaTexto) ?? 0;

  // Crear objeto y ejecutar
  Empleado empleado = Empleado(
    nombre: nombre,
    horasLaboradas: horasLaboradas,
    tarifaHora: tarifaHora,
  );

  empleado.imprimirReporte();
}