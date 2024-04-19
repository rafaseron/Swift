import UIKit

// ARQUIVO DEMONSTRATIVO DE PROPRIEDADES DE HERANCA
/* Temos umam classe Conta, sendo uma classe mais genérica e conteudo todo o basico que toda Conta tem que ter
    Uma Poupanca é uma Conta
    Uma ContaCorrente é uma Conta
    Porém -> uma Poupanca é diferente de uma ContaCorrente. Portanto, existem métodos que as duas devem ter de diferenca
    
    Ai está a sacada de Criar a Classe 'Conta' */

// OU SEJA, CASO VOCE PRECISE DE UTILIZAR DE HERANCA, DEVE UTILIZAR 'CLASS' E NAO 'STRUCT' -> Struct nao tem essa propriedade
// --> CASO NAO QUEIRA PERMITIR HERANCA: DEVE UTILIZAR 'STRUCT' OU ENTAO 'FINAL CLASS'

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
    
    /*  SUPER: um "fardo" obrigatório quando se trabalha com herancas em Swift
     o Super é usado para chamar funcoes e propertys da classe Pai dentro da classe Filha:
         -> super.depoositar(valor: Double)
     Também, é utilizado para chamar o inializador da classe Pai dentro da classe Filha
     (obrigatório quando a classe Filha tem um inicializador proprio)
         -> super.init( )
     */
    
    // MUITA ATENCAO AO USAR INIT EM CLASSES QUE HERDAM UMA OUTRA CLASSE:
    /*      O init da class Filha SOBRESCREVE o init da classe Pai
            -> PARA RESOLVER ISSO: temos que passar os valores recebidos pelo init da classe Filha para a classe Pai, com super.init( ) */
    
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


/* CONCLUSAO:
    1. Caso precise utilizar heranca -> deve-se utilizar 'Class' e nao 'Struct'
    2. Caso não queira permitir heranca -> deve-se utilizar 'Struct' ou 'Final Class'
    3. Caso a classe Filha receba parametros, seu inicializador sobrescreverá o inicializador da classe Pai -> precisa passar os parametros recebidos da classe Filha para a classe Pai, chamando o inicializador da classe Pai dentro da classe Filha.
        -> Para isso, chame super.init( )
    4. Para chamar qualquer método da classe Pai dentro da classe filha -> deve-se utilizar super.metodoParaSerChamado( )
        -> Um exemplo mesmo disso é o super.init( )
    5. Utilize 'override' para sobrescrever funcoes provenientes da classe Pai

 */





