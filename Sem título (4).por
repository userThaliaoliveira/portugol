// impressão da quantidade de numeros impares dentro do vetor
programa {
  funcao inicio() {
    inteiro impares[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
    inteiro contador = 0;

    para(inteiro i = 0; i < 15; i++) {
      se(impares[i] % 2 != 0) {
        contador++
      }
    }

    escreva("No vetor existem ", contador, " numeros impares");
  }
}

