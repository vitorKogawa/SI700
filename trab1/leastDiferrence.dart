// 1 - leastDifference(a,b,c): receberá três argumentos numéricos e computará a menor diferença em módulo entre quaisquer pares desses argumentos.

// print(leastDifference(1,5,9)); // 4
// print(leastDifference(-1,15,3)); // 4
// print(leastDifference(-101,15,99)); // 84
// print(leastDifference(21,35,19)); // 2

//1 -> a - b
//2 -> a - c
//3 -> b - a
//4 -> b - c
//5 -> c - a
//6 -> c - b

import 'dart:math';

dynamic leastDifference(a, b, c) {
  int aSubB = (a - b);
  int aSubC = (a - c);
  int bSubA = (b - a);
  int bSubC = (b - c);
  int cSubA = (c - a);
  int cSubB = (c - b);

  List<int> resultados = [];
  resultados.add(aSubB.abs());
  resultados.add(aSubC.abs());
  resultados.add(bSubA.abs());
  resultados.add(bSubC.abs());
  resultados.add(cSubA.abs());
  resultados.add(cSubB.abs());

  return resultados.fold(resultados[0], min);
}

void main() {
  print(leastDifference(1, 5, 9)); // 4
  print(leastDifference(-1, 15, 3)); // 4
  print(leastDifference(-101, 15, 99)); // 84
  print(leastDifference(21, 35, 19)); // 2
}

//https://api.dart.dev/stable/1.10.1/dart-core/List/fold.html
