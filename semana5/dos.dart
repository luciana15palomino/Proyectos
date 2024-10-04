import 'dart:io';

void main() {
  // Solicitar el número de términos al usuario
  print('Introduce el número de términos de la secuencia Fibonacci:');
  int? n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1, siguiente;

  // Imprimir los primeros dos términos
  print('Secuencia Fibonacci:');
  if (n >= 1) print(a);
  if (n >= 2) print(b);

  // Generar la secuencia con un bucle for
  for (int i = 3; i <= n; i++) {
    siguiente = a + b;
    print(siguiente);
    a = b;
    b = siguiente;
  }
}
