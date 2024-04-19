import UIKit

class ContaCorrente{
    var saldoBancario: Double
    var nome: String
    
    func sacarDinheiro(valor: Double){ //classes nao precisam (nem suportam) mutating func. Fazem esse 'mutating' de forma automatica
        saldoBancario -= valor
    }
    
    func depositarDinheiro(valor: Double){
        saldoBancario += valor
    }
    
    func verificarSaldo(){
        print("Saldo bancário do Cliente \(nome) -> \(saldoBancario) R$")
    }
    
    init(nome: String){ //os atributos que serao recebidos no Construtor da Classe, sao recebidos no Construtor do Init
        saldoBancario = 0.0 //variaveis podem ser inicializadas no Corpo da Classe ou no Corpo do Init
        self.nome = nome //pra nao ficar 'nome = nome', a sintaxe fica entao 'self.nome = nome', sendo o 'com self' o 'nome da classe' e o 'sem self' o 'nome recebido pelo construtor'
    }
}

// CONCLUSAO:
/* O Construtor da Classe em Swift é o Construtor do init */

var contaGuilherme = ContaCorrente(nome: "Guilherme")
contaGuilherme.verificarSaldo()

contaGuilherme.depositarDinheiro(valor: 1400)
contaGuilherme.verificarSaldo()

contaGuilherme.sacarDinheiro(valor: 200)
contaGuilherme.verificarSaldo()

// Conclusão Classe vs Struct:
/* 
 Em Struct ->
 Definir Parametros dentro de uma Struct não é dentro do ( ) mas sim dentro do proprio Corpo { } da Struct.
 Funcoes que alterem o valor de uma property de dentro da classe devem ser anotadas como 'mutating'
 
 Em Classe ->
 O Construtor da Classe em Swift é o Construtor do init() { }
 O Corpo do init pode ser usado para inializar valores para as propertys (variaveis)
 Faz o 'mutating' nas func de forma automatica, nao precisa/suporta a anotacao
 */
