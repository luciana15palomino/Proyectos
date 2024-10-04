void main() {
  print('Números perfectos entre 1 y 10,000:');

  for (int num = 1; num <= 10000; num++) {
    int sumaDivisores = 0;

    // Encontrar los divisores propios
    for (int divisor = 1; divisor < num; divisor++) {
      if (num % divisor == 0) {
        sumaDivisores += divisor;
      }
    }

    // Verificar si es un número perfecto
    if (sumaDivisores == num) {
      print(num);
    }
  }
}
