programa {
  funcao inicio() {
  algoritmo "BancoRISC"

var
    saldo: real
    escolha: caracter

procedimento menu()
inicio
    escreva("MENU:")
    escreva("1 - Dep�sito")
    escreva("2 - Saque")
    escreva("3 - Consulta")
    escreva("4 - Sa�da")
    escreva("Escolha uma op��o: ")
    leia(escolha)
fim

procedimento deposito()
var
    valor: real
inicio
    escreva("Digite o valor do dep�sito: ")
    leia(valor)
    saldo <- saldo + valor
    escreva("Dep�sito realizado com sucesso!")
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
            "4": escreva("Obrigado por utilizar nossos servi�os!")
            senao: escreva("Op��o inv�lida. Escolha novamente.")
        fim escolha
    ate escolha = "4"
fim
    
  
}
