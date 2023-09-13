//Misture vetores e matrizes para criar uma tabela com nomes dos integrantes do grupo e 3 notas de cada.
//Os nomes dos devem estar em um vetor e as notas em uma matriz:
//Exemplo: Notas do Samuel: [10][10][10]
//         Notas do Leno: [10][10][10]
programa {

  funcao inicio() {
    
    cadeia nomes[6]
    nomes[0] = "Thalia"
    nomes[1] = "Debora"
    nomes[2] = "Gabriel"
    nomes[3] = "João"
    nomes[4] = "Eduardo"
    nomes[5] = "Raquel"

    real notas[6][3]
    
    
    para(inteiro i = 0; i < 6; i++) {
      escreva("Notas do ", nomes[i], ": ")
      para(inteiro j = 0; j < 3; j++) {
        leia(notas[i][j])
      }
    }

    
    para(inteiro i = 0; i < 6; i++) {
      escreva("Notas do ", nomes[i], ": [")
      para(inteiro j = 0; j < 3; j++) {
        escreva(notas[i][j])
        se(j < 2) {
          escreva("][")
        } senao {
          escreva("]\n")
        }
      }
    }
  }
}