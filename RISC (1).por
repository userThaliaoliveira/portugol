programa
{ 
  real saldo = 0.0
    funcao inicio()
    {
        escreva("Bem-vindo ao Banco!\n")
        
        menu(saldo)
    }
    funcao deposito()
    {
        real valor
        escreva("Digite o valor a depositar: ")
        leia(valor)
        saldo = saldo + valor
        escreva("Dep�sito realizado com sucesso!\n")
        menu() 
    }

    funcao saque()
    {
        real valor
        escreva("Digite o valor a sacar: ")
        leia(valor)
        se (valor <= saldo) {
            saldo = saldo - valor
            escreva("Saque realizado com sucesso!\n")
        } senao {
            escreva("Saldo insuficiente para saque.\n")
        }

    }

    funcao consultaSaldo()
    {
        escreva("Seu saldo �: ", saldo, "\n")
    }

    funcao menu()
    {
        inteiro opcao

        faca {
            escreva("\nMenu:\n")
            escreva("1. Dep�sito\n")
            escreva("2. Saque\n")
            escreva("3. Consulta de Saldo\n")
            escreva("4. Sair\n")
            escreva("Escolha uma op��o: ")
            leia(opcao)

            limpa()

            escolha(opcao){
                caso 1:
                    deposito()
                    pare
                caso  2:
                    saque()
                    pare
                caso  3:
                    consultaSaldo()
                    pare
                caso  4:
                    escreva("Saindo do programa. At� logo!\n")
                    pare
                caso contrario:
                    escreva("Op��o inv�lida! Tente novamente.\n")
              }
        } enquanto (opcao != 4)
    }

}
