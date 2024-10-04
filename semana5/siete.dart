void main() {

  print('Ingrese el tamaño de la matriz n (n x n):');
  int n = int.parse(stdin.readLineSync()!);


  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));

  int izquierda = 0, derecha = n - 1, arriba = 0, abajo = n - 1;
  int valor = 1;

  while (valor <= n * n) {
    for (int j = izquierda; j <= derecha; j++) {
      matriz[arriba][j] = valor++;
    }
    arriba++;

    for (int i = arriba; i <= abajo; i++) {
      matriz[i][derecha] = valor++;
    }
    derecha--;


    if (arriba <= abajo) {
      for (int j = derecha; j >= izquierda; j--) {
        matriz[abajo][j] = valor++;
      }
      abajo--;
    }

    if (izquierda <= derecha) {
      for (int i = abajo; i >= arriba; i--) {
        matriz[i][izquierda] = valor++;
      }
      izquierda++;
    }
  }

  print('Matriz en forma de espiral:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write('${matriz[i][j]} '.padLeft(4));
    }
    print('');
  }
}
