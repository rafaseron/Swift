import UIKit

struct ContaCorrente{
    var saldoBancario = 0.0
    // IMPORTANTE:
    //Criar variavel/property sem inicializar aqui dentro da Struct faz com que Sejam Parametros que devem-se passar Argumentos ao Instanciar a Struct
    var nome: String
    
    mutating func sacarDinheiro(valor: Double){ //para alterar o valor de uma property de uma Struct usando uma funcao, deve-se coloca-la como mutating
        saldoBancario -= valor
    }
    
    mutating func depositarDinheiro(valor: Double){
        saldoBancario += valor
    }
    
    func verificarSaldo(){
        print("Saldo bancário do Cliente \(nome) -> \(saldoBancario) R$")
    }
}

var contaGuilherme = ContaCorrente(nome: "Guilherme")
contaGuilherme.verificarSaldo()

contaGuilherme.depositarDinheiro(valor: 1400)
contaGuilherme.verificarSaldo()

contaGuilherme.sacarDinheiro(valor: 200)
contaGuilherme.verificarSaldo()

// Conclusão:
/* Definir Parametros dentro de uma Struct não é dentro do ( ) mas sim dentro do proprio Corpo { } da Struct */
