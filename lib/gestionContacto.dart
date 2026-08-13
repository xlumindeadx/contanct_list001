import 'dart:io';
import '../bin/main.dart';

// Función para buscar contacto
void buscarContacto(List<Contacto> diary) {
  stdout.write("Ingresa el nombre del contacto a buscar: ");
  String nombre = stdin.readLineSync() ?? '';

  bool encontrado = false;

  for (Contacto contacto in diary) {
    if (contacto.name.toLowerCase() == nombre.toLowerCase()) {
      print("\nContacto encontrado: ");
      print("Nombre: ${contacto.name}");
      print("Teléfono: ${contacto.phone}");
      encontrado = true;
      break;
    }
  }

  if (!encontrado) {
    print('No se encontró ningún contacto con ese nombre.');
  }
}

// Función para eliminar contacto
void eliminarContacto(List<Contacto> diary) {
  stdout.write("Ingresa el nombre del contacto a eliminar: ");
  String nombre = stdin.readLineSync() ?? '';

  for (int i = 0; i < diary.length; i++) {
    if (diary[i].name.toLowerCase() == nombre.toLowerCase()) {
      print("Contacto encontrado: ${diary[i].name} - ${diary[i].phone}");

      diary.removeAt(i);

      print("Contacto eliminado correctamente.");
      return;
    }
  }

  print("No se encontró ningún contacto con ese nombre");
}