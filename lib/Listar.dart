import 'dart:io';
import '../bin/main.dart';

void listarContactos(List<Contacto> diary) {
  if (diary.isEmpty) {
    print('No hay contactos registrados.');
    return;
  }

  print('\n--- Lista de Contactos ---');

  for (int i = 0; i < diary.length; i++) {
    Contacto contacto = diary[i];

    print('Contacto ${i + 1}');
    print('Nombre: ${contacto.name}');
    print('Teléfono: ${contacto.phone}');
    print('--------------------------');
  }
}