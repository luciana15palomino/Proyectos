import 'dart:io';

bool esPrimo(int numero) {
  if (numero < 2) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void main() {
  // Solicitar los números al usuario
  print('Introduce el primer número:');
  int? inicio = int.parse(stdin.readLineSync()!);

  print('Introduce el segundo número:');
  int? fin = int.parse(stdin.readLineSync()!);

  // Asegurarse de que inicio es menor que fin
  if (inicio > fin) {
    int temp = inicio;
    inicio = fin;
    fin = temp;
  }

  int sumatoria = 0;

  // Recorrer el rango y sumar los números primos
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumatoria += i;
    }
  }

  print('La sumatoria de los números primos entre $inicio y $fin es: $sumatoria');
}
