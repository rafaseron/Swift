import UIKit

enum Mes: Int{
    case janeiro = 1, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

let janeiro = Mes.janeiro
print(janeiro.rawValue) //resultado -> 0 quando janeiro nao inicializado
                        // com 'janeiro = 1' -> resultado fica 1
                        // se 'enum Mes: String{ }' -> o resultado do rawValue é a propria String 'janeiro'
                        // se 'janeiro = "Janeiro" -> o resultado do rawValue é 'Janeiro' com o J maiusculo

// Outro exemplo
enum Moeda: Double {
    case umCentavo = 0.01
    case cincoCentavos = 0.05
    case dezCentavos = 0.10
    case vinteECincoCentavos = 0.25
    case cinquentaCentavos = 0.50
}

var moeda = Moeda.cincoCentavos

// Outro exemplo
enum ResultadoSaque {
    case sucesso (newValue: Double)
    case falha (erro: String)
}

class ContaCorrente{
    var saldo: Double = 0.0
    
    func depositar(valor: Double){
        saldo += valor
    }
    
    func sacar(valor: Double) -> ResultadoSaque{
        if valor<saldo{
            return .falha(erro: "Saldo insuficiente")
        }else {
            saldo -= valor
            return .sucesso(newValue: saldo)
        }
    }
    
}

// Vamos entao criar uma ContaCorrente para armazenar um Resultado da funcao 'sacar'
var vitorContaCorrente = ContaCorrente()

var resultado = vitorContaCorrente.sacar(valor: 200)

// Agora entao usar RawValues + Switch

switch resultado{
case .falha(let newValue): print("Saque realizado! novo saldo -> \(newValue)")
case .sucesso(let erro): print(erro)
}
