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
        escreva("Depósito realizado com sucesso!\n")
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
        escreva("Seu saldo é: ", saldo, "\n")
    }

    funcao menu()
    {
        inteiro opcao

        faca {
            escreva("\nMenu:\n")
            escreva("1. Depósito\n")
            escreva("2. Saque\n")
            escreva("3. Consulta de Saldo\n")
            escreva("4. Sair\n")
            escreva("Escolha uma opção: ")
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
                    escreva("Saindo do programa. Até logo!\n")
                    pare
                caso contrario:
                    escreva("Opção inválida! Tente novamente.\n")
              }
        } enquanto (opcao != 4)
    }

}
