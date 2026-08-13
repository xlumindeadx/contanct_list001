

//FORMULA : H = raíz cuadrada(a2 + b2).

import 'dart:io';
import 'dart:math';

// Clase 
class TrianguloRectangulo {
  double ladoA;
  double ladoB;

  // Constructor/clase
  TrianguloRectangulo({
    required this.ladoA,
    required this.ladoB,
  });

  // metodo calculo
  double calcularHipotenusa() {
    return sqrt(pow(ladoA, 2) + pow(ladoB, 2));
  }
}

void main() {
  //  el primer lado
  stdout.write("Ingrese el lado A: ");
  String? entradaA = stdin.readLineSync();

  //  no este vacio
  if (entradaA == null || entradaA.trim().isEmpty) {
    print("Lado A no válido.");
    return;
  }

  // el segundo lado
  stdout.write("Ingrese el lado B: ");
  String? entradaB = stdin.readLineSync();

  if (entradaB == null || entradaB.trim().isEmpty) {
    print("Lado B no válido.");
    return;
  }

  //  datos/ numbers
  double ladoA = double.tryParse(entradaA) ?? 0;
  double ladoB = double.tryParse(entradaB) ?? 0;

  // el objeto del triangulo
  TrianguloRectangulo triangulo = TrianguloRectangulo(
    ladoA: ladoA,
    ladoB: ladoB,
  );

  //  hipotenusa =
  print("Hipotenusa: ${triangulo.calcularHipotenusa()}");
}