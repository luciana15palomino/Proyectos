import 'dart:io';

void main() {
  // Solicitar el tamaño de la matriz
  print('Ingrese el tamaño de la matriz N (NxN):');
  int n = int.parse(stdin.readLineSync()!);

  // Inicializar las matrices
  List<List<int>> matrizA = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matrizB = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> suma = List.generate(n, (_) => List.filled(n, 0));

  // Solicitar elementos de la primera matriz
  print('Ingrese los elementos de la primera matriz (A):');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Elemento A[$i][$j]:');
      matrizA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Solicitar elementos de la segunda matriz
  print('Ingrese los elementos de la segunda matriz (B):');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('Elemento B[$i][$j]:');
      matrizB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Calcular la suma de las dos matrices
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matrizA[i][j] + matrizB[i][j];
    }
  }

  // Imprimir la matriz resultante
  print('La suma de las matrices A y B es:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write('${suma[i][j]} ');
    }
    print('');
  }
}
