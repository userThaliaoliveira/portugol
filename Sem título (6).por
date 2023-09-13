programa {
  funcao boasVindas(){
    para(inteiro i = 0; i < 30; i++){
      escreva("-")
    }

    escreva("\n SALÃO VAI NA WEB\n")

    para(inteiro j = 0; j < 30; j++){
      escreva("-")
    }
    menu()

  }
  funcao inicio() {
    boasVindas()
  }

  funcao menu(){
    inteiro opcao
    escreva("\nFaça sua escolha: ")
    escreva("\n1) Cabeleleira/Barbearia")
    escreva("\n2) Cílios")
    escreva("\n3) Sobrancelha")
    escreva("\n4) Limpeza de pele")
    escreva("\nDigite sua escolha: ")
    leia(opcao)
    servicos(opcao)
  }

  funcao servicos(inteiro servico){
    escolha(servico){
      caso 1:
        inteiro profissional
        escreva("\nQUAL REPRESENTANTE: ")
        escreva("\n1) Sheila")
        escreva("\n2) Nando")
        escreva("\nDigite sua escolha: ")
        leia(profissional)
        cabeloOuBarba(profissional)
      pare

      caso 2:
        escreva("\nVocê colocou um Volume russo e Kaiane cobrou R$140,00 pelo serviço")
      pare

      caso 3: 
        escreva("\nSua sobrancelha ficou show de bola e foi cobrado R$20,00 pelo serviço")
      pare

      caso 4:
        escreva("\nFoi realizada uma limpeza de pele e a Vogue te contratou pela beleza")
      pare
    }
  }

  funcao cabeloOuBarba(inteiro avalia){
    escolha(avalia){
      caso 1:
        escreva("Sheila te atendeu muito bem e cobrou R$250,00 pelos serviços!")
      pare
      caso 2: 
        escreva("Nando te atendeu muito bem e cobrou R$250,00 pelos serviços!")
      pare
    }
  }
}