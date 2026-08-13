
// Clase/ serie Fibonacci
class SerieFibonacci {
  int limite;

  // Constructor de la clase
  SerieFibonacci({required this.limite});

  // el metodo
  void imprimirSerie() {
    // Comenzamos la serie con 1 y 1
    int primerNumero = 1;
    int segundoNumero = 1;

    // se repide desde que  el numero sea <= a 100
    while (primerNumero <= limite) {
      // numero actual
      print(primerNumero);

      // Sumamos los dos numeros
      int siguienteNumero = primerNumero + segundoNumero;

      // actualiza los numeros para continuar serie
      primerNumero = segundoNumero;
      segundoNumero = siguienteNumero;
    }
  }
}

void main() {
  // Creamos el objeto / damos limite 100
  SerieFibonacci serie = SerieFibonacci(limite: 100);

  // Ejecutamos el metodo/muestra serie
  serie.imprimirSerie();
}