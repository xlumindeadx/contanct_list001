import '../bin/main.dart';
import 'dart:io';

void agregarContacto(List<Contacto> diary) {

  // Solicito al usuario 
  stdout.write('Ingrese el nombre del contacto: ');

  // read nombre ingresado/consola.
  String? nombre = stdin.readLineSync();

  // Pide/telefono.
  stdout.write('Ingrese el teléfono del contacto: ');
  String? telefono = stdin.readLineSync();

  // Verifica que tengan información
  if (nombre != null &&
      telefono != null &&
      nombre.trim().isNotEmpty &&
      telefono.trim().isNotEmpty) {

    //crea objecto
    Contacto contacto = Contacto(
      nombre.trim(),
      telefono.trim(),
    );

    // Agrega el contacto a la lista que recibe desde main
    diary.add(contacto);
    print('Contacto agregado correctamente.');
  } else {
    print('El nombre y el teléfono no pueden estar vacíos.');
  }
}