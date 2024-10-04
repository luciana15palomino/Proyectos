import 'dart:io';

BigInt calcularFactorial(int numero) {
  BigInt resultado = BigInt.one; // Inicializamos el resultado en 1

  // Estructura repetitiva para calcular el factorial
  for (int i = 2; i <= numero; i++) {
    resultado *= BigInt.from(i); // Convertimos i a BigInt y multiplicamos
  }

  return resultado;
}

void main() {
  // Solicitar el número al usuario
  print('Introduce un número grande para calcular su factorial:');
  int? numero = int.parse(stdin.readLineSync()!);

  // Calcular el factorial usando la función
  BigInt factorial = calcularFactorial(numero);

  // Imprimir el resultado
  print('El factorial de $numero es:');
  print(factorial);
}
