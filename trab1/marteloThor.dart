// 3 - marteloThor(thor, martelo): receberá duas listas com dois elementos, representando a posição de thor e a posição do seu martelo em um plano bidimensional. Ao final, deverá imprimir uma lista de coordenadas que o thor deverá visitar até chegar no seu martelo. O thor só pode se mover para norte, sul, leste ou oeste.

marteloThor(List thor, List martelo) {
  // if((thor[0] - martelo[0]) < (thor[1] - martelo[1])){
  //   //aproximar o eixo X
  // }else{

  // }

  for (thor[0]; thor[0] < martelo[0]; thor[0]++) {
    for (thor[1]; thor[1] < martelo[1]; thor[1]++) {
      print("[${thor[0]}, ${thor[1]}");
    }
  }
}

void main() {
  marteloThor([5, 2], [4, 7]);
  print("oi");
  // [4, 2]
  // [4, 3]
  // [4, 4]
  // [4, 5]
  // [4, 6]
  // [4, 7]

  marteloThor([9, 7], [11, 3]);
  print("oi");
  // [10, 7]
  // [10, 6]
  // [11, 6]
  // [11, 5]
  // [11, 4]
  // [11, 3]
  //
  marteloThor([5, 7], [-5, -3]);
  print("oi");
  // [4, 7]
  // [4, 6]
  // [3, 6]
  // [3, 5]
  // [2, 5]
  // [2, 4]
  // [1, 4]
  // [1, 3]
  // [0, 3]
  // [0, 2]
  // [-1, 2]
  // [-1, 1]
  // [-2, 1]
  // [-2, 0]
  // [-3, 0]
  // [-3, -1]
  // [-4, -1]
  // [-4, -2]
  // [-5, -2]
  // [-5, -3]
}
