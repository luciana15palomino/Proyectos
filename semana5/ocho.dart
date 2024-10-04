import 'dart:io';
import 'dart:math';

void main() {
  // Solicitar al usuario que ingrese un número
  print('Ingrese un número para verificar si es un número de Armstrong:');
  int numero = int.parse(stdin.readLineSync()!);

  // Convertir el número a cadena para contar los dígitos
  String numeroStr = numero.toString();
  int n = numeroStr.length;
  int suma = 0;

  // Calcular la suma de los dígitos elevados a la potencia n
  for (int i = 0; i < n; i++) {
    int digito = int.parse(numeroStr[i]);
    suma += pow(digito, n).toInt();
  }

  // Verificar si el número es un número de Armstrong
  if (suma == numero) {
    print('$numero es un número de Armstrong.');
  } else {
    print('$numero no es un número de Armstrong.');
  }
}
