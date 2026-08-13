class Serie {

  // Método para calcular e imprimir la serie
  void calcularSerie() {

    int anterior = 1;
    int actual = 1;

    while (actual <= 100) {

      print(actual);

      int siguiente = anterior + actual;

      anterior = actual;
      actual = siguiente;
    }
  }
}

void main() {

  // Crear objeto
  Serie serie1 = Serie();

  // Mostrar la serie
  serie1.calcularSerie();
}