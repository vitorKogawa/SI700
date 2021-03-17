// 2 - destruirPetecas(numPetecas, numAmigos): receberá o número de petecas que um grupo de amigos possuem em
// conjunto e o número de amigos. Nesse caso, você deverá retornar quantas petecas deverão ser destruídas para que não
// haja brigas entre os amigos e todos eles recebam o mesmo número de petecas. Em outras palavras, se temos 4 amigos
// e 23 petecas, podemos dar cinco petecas para cada amigo, o que totaliza 20 petecas
// distribuídas. As outras 3 petecas devem ser destruídas para que não haja briga.

destruirPetecas(numeroPetecas, numeroAmigos) => numeroPetecas % numeroAmigos;

void main() {
  print(destruirPetecas(23, 4)); // 3
  print(destruirPetecas(35, 6)); // 5
  print(destruirPetecas(95, 19)); // 0
}
