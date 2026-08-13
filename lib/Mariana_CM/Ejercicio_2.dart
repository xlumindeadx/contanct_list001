

import 'dart:io';

// Clase para guardar /datosE
class Empleado {
  String nombre;
  double horasTrabajadas;
  double tarifaPorHora;

  // Constructor/clase
  Empleado({
    required this.nombre,
    required this.horasTrabajadas,
    required this.tarifaPorHora,
  });

  // Metodo 
  double calcularTotal() {
    return horasTrabajadas * tarifaPorHora;
  }
}

void main() {
  // Se pide nombre
  stdout.write("Ingrese el nombre del empleado: ");
  String? nombreEntrada = stdin.readLineSync();

  // se valida el campo vacio
  if (nombreEntrada == null || nombreEntrada.trim().isEmpty) {
    print("Nombre no válido.");
    return;
  }

  // horas trabajadas
  stdout.write("Ingrese las horas laboradas: ");
  String? horasEntrada = stdin.readLineSync();

  // Valida/horas
  if (horasEntrada == null || horasEntrada.trim().isEmpty) {
    print("Horas no válidas.");
    return;
  }

  // se pide tarifaxhora
  stdout.write("Ingrese la tarifa por hora: ");
  String? tarifaEntrada = stdin.readLineSync();

  // se valida tarifa
  if (tarifaEntrada == null || tarifaEntrada.trim().isEmpty) {
    print("Tarifa no válida.");
    return;
  }

  // Convierte las horas/tarifa a numbers
  double horas = double.tryParse(horasEntrada) ?? 0;
  double tarifa = double.tryParse(tarifaEntrada) ?? 0;

  // el objeto empleado
  Empleado empleado = Empleado(
    nombre: nombreEntrada,
    horasTrabajadas: horas,
    tarifaPorHora: tarifa,
  );

  // Muestra los datos
  print("Nombre: ${empleado.nombre}");
  print("Horas laboradas: ${empleado.horasTrabajadas}");
  print("Total devengado: ${empleado.calcularTotal()}");
}