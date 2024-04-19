import UIKit

// ARQUIVO DEMONSTRATIVO DE PROPRIEDADES DE HERANCA
/* Temos umam classe Conta, sendo uma classe mais genérica e conteudo todo o basico que toda Conta tem que ter
    Uma Poupanca é uma Conta
    Uma ContaCorrente é uma Conta
    Porém -> uma Poupanca é diferente de uma ContaCorrente. Portanto, existem métodos que as duas devem ter de diferenca
    
    Ai está a sacada de Criar a Classe 'Conta' */

// OU SEJA, CASO VOCE PRECISE DE UTILIZAR DE HERANCA, DEVE UTILIZAR 'CLASS' E NAO 'STRUCT' -> Struct nao tem essa propriedade

class Conta{
    var saldo = 0.0
    var nome: String
    
    func depoositar(valor: Double){
        saldo += valor
    }
    
    func sacar(valor: Double){
        saldo -= valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

// 'POUPANÇA' HERDA A CLASSE 'CONTA'
class Poupanca: Conta{
    var possuiCartaoElo: Bool = false
    
    func solicitarCartaoElo(){
        print("Cartao Elo Poupanca SOLICITADO com sucesso")
        possuiCartaoElo = true
    }
    
    func cancelarCartaoElo(){
        print("Cartao Elo Poupanca CANCELADO com sucesso")
        possuiCartaoElo = false
    }
}

// Alguns usos dos metodos de Poupanca (e de Conta, já que Poupanca é uma Conta)
var vitorPoupanca = Poupanca(nome: "Vitor")
vitorPoupanca.depoositar(valor: 100)
print("Saldo da Poupanca do \(vitorPoupanca.nome) -> \(vitorPoupanca.saldo) R$")
vitorPoupanca.solicitarCartaoElo()

// 'CONTACORRENTE' HERDA A CLASSE 'CONTA'
class ContaCorrente: Conta{
    
    func transferenciaBancaria(valor: Double){
        if valor < saldo{
            saldo -= valor
            print("Sua transferencia de \(valor) foi realizada com sucesso! Seu saldo agora é de \(saldo) R$")
        } else{ print("Voce nao tem saldo suficiente para esta transacao") }
    }
    
}

// Alguns usos dos metodos de ContaCorrente (e de Conta, já que ContaCorrente é uma Conta)
var vitorContaCorrente = ContaCorrente(nome: "Vitor")
vitorContaCorrente.depoositar(valor: 100)
print("Saldo da ContaCorrente do \(vitorContaCorrente.nome) -> \(vitorContaCorrente.saldo) R$")
vitorContaCorrente.transferenciaBancaria(valor: 50)



