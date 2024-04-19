import UIKit

struct StructContaCorrente{
    var saldoBancario = 0.0
    var nome: String
    
    mutating func sacarDinheiro(valor: Double){
        saldoBancario -= valor
    }
    
    mutating func depositarDinheiro(valor: Double){
        saldoBancario += valor
    }
    
    func verificarSaldo(){
        print("Saldo bancário do Cliente \(nome) -> \(saldoBancario) R$")
    }
}

class ClassContaCorrente{
    var saldoBancario = 0.0
    var nome: String
    
    func sacarDinheiro(valor: Double){
        saldoBancario -= valor
    }
    
    func depositarDinheiro(valor: Double){
        saldoBancario += valor
    }
    
    func verificarSaldo(){
        print("Saldo bancário do Cliente \(nome) -> \(saldoBancario) R$")
    }
    
    init(nome: String){
        self.nome = nome
    }
}

var joaoStructVar = StructContaCorrente(nome: "Joao")
let joaoStructLet = StructContaCorrente(nome: "Joao")

let joaoClass = ClassContaCorrente(nome: "Joao")

/* NAO PODEM SER ALTERADOS VALORES DE DENTRO DA STRUCT CASO O OBJETO SEJA LET */
joaoStructVar.depositarDinheiro(valor: 100)
// joaoStructLet.depositarDinheiro(valor: 100) -> Erro nessa linha

joaoClass.depositarDinheiro(valor: 100)


// --> PARTE MAIS IMPORTANTE DA DIFERENCA ENTRE STRUCT E CLASS
/* Se voce faz uma Copia de um Objeto de uma Classe -> Voce na verdade recebe apenas o Endereco de Memoria (como Ponteiros em C++)
    Ou seja: Alteracoes na Versao 2 são feitas também na Versao 1, e vice-versa.
    Esse comportamento só acontece com Classes - NAO acontecem com Structs
 */

// Exemplo:

var primeiroVitor = ClassContaCorrente(nome: "Vitor")
var segundoVitor = primeiroVitor

primeiroVitor.depositarDinheiro(valor: 100)
segundoVitor.verificarSaldo()

// PERCEBA que -> DEPOSITAMOS APENAS no 'PRIMEIROVITOR' e o 'SEGUNDOVITOR' TAMBÉM RECEBEU as ALTERACOES

