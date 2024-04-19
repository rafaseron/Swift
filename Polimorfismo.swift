import UIKit

// PULAR PARA BAIXO. ESTE CÓDIGO É SÓ PARA CONSEGUIRMOS EXPLICAR POLIMORFISMO ABAIXO.

class Conta{
    var saldo = 0.0
    var nome: String
    
    func depoositar(valor: Double){
        saldo += valor
    }
    
    func sacar(valor: Double){
        saldo -= valor
        print("Voce sacou \(valor) R$ Sem Taxas Bancárias. Seu novo saldo é de \(saldo) R$")
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

// 'POUPANÇA' HERDA A CLASSE 'CONTA'
class Poupanca: Conta{
    var possuiCartaoElo: Bool
    
    func solicitarCartaoElo(){
        print("Cartao Elo Poupanca SOLICITADO com sucesso")
        possuiCartaoElo = true
    }
    
    func cancelarCartaoElo(){
        print("Cartao Elo Poupanca CANCELADO com sucesso")
        possuiCartaoElo = false
    }
    
    init(possuiCartaoElo: Bool, nome: String) {
        self.possuiCartaoElo = possuiCartaoElo
        
        super.init(nome: nome) // Passando o 'nome' do init da class 'Poupanca' para o init da class pai 'Conta'
    }
}

// Alguns usos dos metodos de Poupanca (e de Conta, já que Poupanca é uma Conta)
var vitorPoupanca = Poupanca(possuiCartaoElo: false, nome: "Vitor")
vitorPoupanca.depoositar(valor: 100)
print("Saldo da Poupanca do \(vitorPoupanca.nome) -> \(vitorPoupanca.saldo) R$")
vitorPoupanca.solicitarCartaoElo()
vitorPoupanca.sacar(valor: 20)

// 'CONTACORRENTE' HERDA A CLASSE 'CONTA'
class ContaCorrente: Conta{
    
    func transferenciaBancaria(valor: Double){
        if valor < saldo{
            saldo -= valor
            print("Sua transferencia de \(valor) foi realizada com sucesso! Seu saldo agora é de \(saldo) R$")
        } else{ print("Voce nao tem saldo suficiente para esta transacao") }
    }
    
    //Vamos colocar uma taxa para o método Sacar aqui na ContaCorrente (como tem muito comentario na classe Poupanca, melhor colocar aqui)
    override func sacar(valor: Double) {
        saldo -= valor+5
        print("Voce sacou \(valor) e a Taxa de Saque é de 5 R$. Seu novo saldo agora é de \(saldo) R$")
    }
    
}

// Alguns usos dos metodos de ContaCorrente (e de Conta, já que ContaCorrente é uma Conta)
var vitorContaCorrente = ContaCorrente(nome: "Vitor")
vitorContaCorrente.depoositar(valor: 100)
print("Saldo da ContaCorrente do \(vitorContaCorrente.nome) -> \(vitorContaCorrente.saldo) R$")
vitorContaCorrente.transferenciaBancaria(valor: 50)
vitorContaCorrente.sacar(valor: 20)

// -->FOCAR AQUI EM BAIXO <--

// POLIMORFISMO
/* Basicamente, no nosso exemplo, é a capacidade de
    1. Uma 'Poupanca' ser tratada como se fosse uma 'Conta'
    2. Uma 'ContaCorrente' ser tratada como se fosse uma 'Conta'
    3. Uma 'ContaCorrete' nao poder ser tratada como uma 'Poupanca' e vice-versa
 */

func exibirSaldoDaConta(conta: Conta){
    print(conta.saldo)
}

exibirSaldoDaConta(conta: vitorPoupanca)
exibirSaldoDaConta(conta: vitorContaCorrente)

// Percebe-se que Poupaca e ContaCorrente puderam ser tratadas como sendo seu tipo mais genérico, o 'Conta'

// AGORA VAMOS ENTAO FAZER UMA VERIFICACAO DE POLIMORFISMO

func verificarTipoDeConta(conta: Conta){
    if conta is Poupanca {
        print("Esta é uma Poupanca")
    } else if conta is ContaCorrente {
        print("Esta é uma ContaCorrente")
    }
}

verificarTipoDeConta(conta: vitorPoupanca)
verificarTipoDeConta(conta: vitorContaCorrente)

// AGORA vamos entao UTILIZAR 'TYPECASTING' para ACESSAR métodos do Tipo de Conta Específico, caso ela seja daquele tipo

func acessarMetodosDeTiposDeContas(conta: Conta){
    if let contaCorrente = conta as? ContaCorrente{
        contaCorrente.transferenciaBancaria(valor: 2)   //conseguimos aqui acessar neste escopo funcoes especificas do tipo 'ContaCorrente'
                                                        // a partir do tipo genérico 'Conta'
    }
}
