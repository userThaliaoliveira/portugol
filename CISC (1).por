programa
{    real saldo = 0.0
    funcao inicio()
    {  
        escreva("Bem-vindo ao Banco!\n")

        menu(saldo)
    }
    // Fun��o para realizar o dep�sito
    funcao deposito()
    {
        real valor
        escreva("Digite o valor a depositar: ")
        leia(valor)
        saldo = saldo + valor
        escreva("Dep�sito realizado com sucesso!\n")
        menu(saldo)
    }

    // Fun��o para realizar o saque
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

    // Fun��o para consultar o saldo
    funcao consultaSaldo()
    {
        escreva("Seu saldo �: ", saldo, "\n")
    }

    // Fun��o do menu
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

            escolha (opcao) {
                caso 1:
                    deposito()
                caso 2:
                    saque()
                caso 3:
                    consultaSaldo()
                caso 4:
                    escreva("Saindo do programa. At� logo!\n")
                    pare
                senao:
                    escreva("Op��o inv�lida! Tente novamente.\n")
            }
        } enquanto (opcao != 4)
    }

}
