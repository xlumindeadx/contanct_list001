// import 'dart:io';
import 'dart:io';
import 'dart:math';

// Clase triángulo
class Triangulo {
    double lado1;
    double lado2;

    // Constructor
    Triangulo({required this.lado1, required this.lado2});

    // Método para hallar hipotenusa
    double calcularHipotenusa(){

        // Calcular potencias
        num lado1P = pow(lado1, 2);
        num lado2P = pow(lado2, 2);

        // Suma de las potencias
        num sumaPotencias = lado1P + lado2P;

        // Calcular raíz cuadrada
        double hipotenusa = sqrt(sumaPotencias);

        return hipotenusa;
    }

    // Método para mostrar resultados
    void resultados(){
        print("La hipotenusa del triángulo es: ${calcularHipotenusa()}");
    }
}

void main() {

    // Entradas
    stdout.write("Ingrese la medida del lado 1 del triángulo: ");
    String lado1Texto = stdin.readLineSync() ?? '0';

    stdout.write("Ingrese la medida del lado 2 del triángulo: ");
    String lado2Texto = stdin.readLineSync() ?? '0';

    // Conversiones
    double lado1 = double.tryParse(lado1Texto) ?? 0;
    double lado2 = double.tryParse(lado2Texto) ?? 0;

    // Crear objeto
    Triangulo triangulo1 = Triangulo(lado1: lado1, lado2: lado2);

    triangulo1.resultados();
}