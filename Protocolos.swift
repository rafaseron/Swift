import UIKit

protocol Conta{
    var saldo: Double { get set } //'get' significa que essa property pode ser lida. 'set' -> significa que essa property pode ser alterada
    var nome: String { get set }
    
    func sacar (valor: Double)
    func depositar (valor: Double)
}

class ContaCorrente: Conta{
    var saldo: Double
    var nome: String
    
    func sacar(valor: Double) {
        //code
    }
    
    func depositar(valor: Double) {
        //code
    }
    
    init(saldo: Double, nome: String) {
        self.saldo = saldo
        self.nome = nome
    }
    
}

// PROTOCOLOS EM SWIFT FUNCIONAM DE MANEIRA MUITO SEMELHANTE A INTERFACES EM KOTLIN
/* -> Voce cria o Protocolo ou Interface e, quando 'herdado', voce precisa implementar todas as funcoes e properties.
      (na verdade, a maneira correta de dizer é: 'E quando implementada a interface/o protocolo') */
