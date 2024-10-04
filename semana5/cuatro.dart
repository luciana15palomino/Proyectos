import 'dart:io';

int invertirNumero(int numero) {
  int numeroInvertido = 0;

  while (numero != 0) {
    int digito = numero % 10; // Extraemos el último dígito
    numeroInvertido = numeroInvertido * 10 + digito; // Añadimos el dígito invertido
    numero ~/= 10; // Quitamos el último dígito del número original
  }

  return numeroInvertido;
}

void main() {
  // Solicitar el número al usuario
  print('Introduce un número entero para invertir:');
  int? numero = int.parse(stdin.readLineSync()!);

  // Calcular el número invertido
  int resultado = invertirNumero(numero);

  // Imprimir el resultado
  print('El número invertido es: $resultado');
}
