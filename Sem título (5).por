// Preciso da soma dos números do vetor
programa {
  funcao inicio() {
    inteiro numeros[5]
    inteiro soma = 0

    para(inteiro i = 0; i < 5; i++){
      escreva("Digite o ", i+1, "º numero: ")
      leia(numeros[i])
    }

    para(inteiro i = 0; i < 5; i++){
      soma += numeros[i]
    }

    escreva("A soma dos numeros do vetor é: ", soma)
  }
}