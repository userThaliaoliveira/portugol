programa {
  funcao inicio() {
  algoritmo "BancoRISC"

var
    saldo: real
    escolha: caracter

procedimento menu()
inicio
    escreva("MENU:")
    escreva("1 - Depósito")
    escreva("2 - Saque")
    escreva("3 - Consulta")
    escreva("4 - Saída")
    escreva("Escolha uma opção: ")
    leia(escolha)
fim

procedimento deposito()
var
    valor: real
inicio
    escreva("Digite o valor do depósito: ")
    leia(valor)
    saldo <- saldo + valor
    escreva("Depósito realizado com sucesso!")
fim

procedimento saque()
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

procedimento consulta()
inicio
    escreva("Saldo atual: ", saldo)
fim

inicio
    saldo <- 0
    repita
        menu()
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
