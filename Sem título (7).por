programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro matriz[2][2] 
    // = { { , }, { , }}
    para(inteiro i = 0; i < 2; i++) {
      // escreva("[")
      para(inteiro j = 0; j < 2; j++) {
        escreva("Insira um valor para a posi��o [", i, "] e para a posi��o [", j, "]: ")
        leia(matriz[i][j])
        // escreva(matriz[i][j], " ")
        // u.aguarde(1000)
      }
      // escreva("]\n")
    }
    para(inteiro i=0;i<2;i++){
      escreva("[")
      para(inteiro j=0;j<2;j++){
        escreva(matriz[i][j], " ")
        u.aguarde(300)
      }
      escreva("]\n")
����}

��}
��}