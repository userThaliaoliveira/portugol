programa {
  funcao inicio() {
    var saldo: real
    escolha: caracter

funcao menu()
inicio
    escreva("MENU:")
    escreva("1 - Depósito")
    escreva("2 - Saque")
    escreva("3 - Consulta")
    escreva("4 - Saída")
    escreva("Escolha uma opção: ")
    leia(escolha)
    retorne escolha
fim

funcao deposito()
var
    valor: real
inicio
    escreva("Digite o valor do depósito: ")
    leia(valor)
    saldo <- saldo + valor
    escreva("Depósito realizado com sucesso!")
fim

funcao saque()
var
    valor: real
inicio
    escreva("Digite o valor do saque: ")
    leia(valor)
    se valor <= saldo entao
        saldo <- saldo - valor
        escreva("Saque realizado com sucesso!")
    senao
        escreva("Saldo insuficiente para saque.")
    fimse
fim

funcao consulta()
inicio
    escreva("Saldo atual: ", saldo)
fim

inicio
    saldo <- 0
    repita
        escolha <- menu()
        escolha caso
            "1": deposito()
            "2": saque()
            "3": consulta()
            "4": escreva("Obrigado por utilizar nossos serviços!")
            senao: escreva("Opção inválida. Escolha novamente.")
        fim escolha
    ate escolha = "4"
fim
  }
}
