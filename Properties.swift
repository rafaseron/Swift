import UIKit

class Conta{
    var saldo = 0.0 {    //isso é uma Property (propriedade armazenada)
        willSet{
            print("Alteracao de saldo. Novo valor -> \(newValue)")  //newValue vem de dentro do willSet
        }
        didSet{
            print("Alteracao de saldo. Valor antigo -> \(oldValue)") //oldValue vem de dentro do didSet
        }
        /* Podemos custumizar o nome da varivel padrao, se quisermos (serve pro willSet e pro didSet):
        didSet(palavraCustumizada){
            print("Alteracao de saldo. Valor antigo -> \(palavraCustumizada)")
        }
         */
    }
    var nome: String //isso é uma Property armazenada
    
    // Tambem temos 'Private' para Properties
    private let CPF = 00274088271
    
    // Se quisermos deixar ela acessível, mas NAO podendo ser Alterada:
    private(set) var numeroTelefone = 1234
    
    static var taxaDeTransferencia = 5.0 //isso é uma Property Estática
    /* Por mais que ela é uma Propriedade Estática, ela ainda pode ser chamada dentro do escopo da classe
            E iterada. Ou seja, seu valor não é fixo.
            Exemplo seria:

            Conta.taxaDeTransferencia += 1
        */
    
    // Porém podemos criar Properties Computadas também:
    var negativado: Bool{
        return saldo < 0
    }
    
    func depoositar(valor: Double){
        saldo += valor
    }
    
    func sacar(valor: Double){
        saldo -= valor
        print("Voce sacou \(valor) R$ Sem Taxas Bancárias. Seu novo saldo é de \(saldo) R$")
        
        //como usar uma Property Estática:
        print("A partir do mes que vem, vamos comecar a comprar uma taxa de transferencia de \(Conta.taxaDeTransferencia) R$")
        // chama direto em Conta.propertyEstatica. Não é acessivel em vitorContaCorrente.taxaDeTransferencia
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

var vitorContaCorrente = Conta(nome: "Vitor")
vitorContaCorrente.depoositar(valor: 100)
print(vitorContaCorrente.negativado)

print(Conta.taxaDeTransferencia)

// APROFUNDANDO NAS PROPRIEDADES COMPUTADAS
// Vamos Copiar a classe de cima para Exemplificar:

class Conta2{
    var saldo = 0.0
    var nome: String
    static var taxaDeTransferencia = 5.0
    
    // Na verdade, ao escrever a Property 'negativado' igual na classe 'Conta', é a mesma coisa que escrever com o get{ }
    var negativado: Bool{
        get{
            return saldo < 0
        }
    }
    
    // o GET fica IMPLICITO na variavel caso nao seja escrito.
    // já o SET é opcional
    
    /* QUAL A DIFERENCA ENTRE GET E SET?
        1. Basicamente, o get permite que você acesse a propriedade e seu valor que será calculado
        2. Já o set permite que voce realize algo quando essa propriedade for alterada por um novo valor
     */
    
    func depoositar(valor: Double){
        saldo += valor
    }
    
    func sacar(valor: Double){
        saldo -= valor
        print("Voce sacou \(valor) R$ Sem Taxas Bancárias. Seu novo saldo é de \(saldo) R$")
        
        //como usar uma Property Estática:
        print("A partir do mes que vem, vamos comecar a comprar uma taxa de transferencia de \(Conta.taxaDeTransferencia) R$")
        // chama direto em Conta.propertyEstatica. Não é acessivel em vitorContaCorrente.taxaDeTransferencia
    }
    
    init(nome: String) {
        self.nome = nome
    }
}





/* CONCLUSAO:
    1. Varivaveis que armazenam valor sao Properties Armazenadas
    2. Variaveis podem ter um Type definido e fazer um Retorno se abrir escopo nelas -> Properties Computadas
    3. Existem Properties Estaticas -> são propriedades exclusivas da própria classe. Podem ser instanciadas. Não podem ser instanciadas por objetos da Classe
    4. Por mais que uma propriedade possa ser Estática, seu valor ainda pode ser iterado. Ou seja, o valor não é fixo.
    5. o get fica implicito dentro da Property Computada -> já que a variavel faz um get de um valor de um retorno que será computado
    6. existe a propriedade set -> permite que voce realize algo quando essa propriedade computada for alterada por um novo valor
    7. Temos Observadores de Propriedades -> willSet: Novo Valor  e  didSet: Valor Antigo
        Funciona basicamente como se fosse um Observador de Estado de Valor da Variavel.
    8. Podemos definir Properties como 'Private' -> apenas 'private' para deixar acessivel apenas pelo escopo da classe.
        Ou deixar como private(set) var nomeVariavel -> para deixar como acessível mas nao podendo ter seu valor alterado
 */
