// 3 - marteloThor(thor, martelo): receberá duas lis'tas com dois elementos, representando a posição de thor e a posição do seu martelo em um plano bidimensional. Ao final, deverá imprimir uma lista de coordenadas que o thor deverá visitar até chegar no seu martelo. O thor só pode se mover para norte, sul, leste ou oeste.

marteloThor(var thor, var martelo) {
  int thorX = thor[0];
  int thorY = thor[1];
  int marteloX = martelo[0];
  int marteloY = martelo[1];

  List<int> pathX = [];
  List<int> pathY = [];

  if (thorX >= marteloX) {
    for (var i = thorX; i >= marteloX; i--) {
      pathX.add(i);
    }
  } else {
    for (var i = thorX; i <= marteloX; i++) {
      pathX.add(i);
    }
  }

  if (thorY >= marteloY) {
    for (var i = thorY; i >= marteloY; i--) {
      pathY.add(i);
    }
  } else {
    for (var i = thorY; i <= marteloY; i++) {
      pathY.add(i);
    }
  }

  int aux = 0;
  for (var j = 0; j < pathY.length; j++) {
    if (j < pathX.length) {
      j == 1 ? aux = j : aux = j + 1;
      print("[${pathX[aux]}, ${pathY[j]}]");
    } else {
      print("[${pathX[aux]}, ${pathY[j]}]");
    }
  }
}

void main() {
  marteloThor([5, 2], [4, 7]);
}
