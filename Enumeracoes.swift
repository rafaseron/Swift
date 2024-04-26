import UIKit

class ContaCorrente{
    var saldo: Double = 0.0
    let nome: String
    
    func depositar(valor: Double){
        saldo += valor
    }
    
    func pagamentoDaFatura(tipoDePagamento: String){
        switch tipoDePagamento{
        case "pix": print("Pix Copia e Cola disponivel para pagamento")
        case "boleto": print("Boleto disponivel para pagamento")
        case "saldoDaConta": print("Será descontado do Saldo em Conta")
        default: break
        }
    }
    
    func pagamentoDaFaturaComEnum(tipoDePagamento: formaDePagamento){
        switch tipoDePagamento{
        case .pix: print("Pix Copia e Cola disponivel para pagamento")
        case .boleto: print("Boleto disponivel para pagamento")
        case .saldoEmConta: print("Será descontado do Saldo em Conta")
        }
    }
    
    
    init (nome: String) {
        self.nome = nome
    }
    
}

// Para 'resolver' um Switch tipo esse da 'func pagamentoDaFatura', onde pode ser mandado dados diferentes dos que podem ser aceitos
// -> da para fazer usando Enumeracoes

enum formaDePagamento{
    case pix
    case boleto
    case saldoEmConta
}

// Dessa forma nao precisa de um 'default' no Switch, já que ele nunca será executado

let vitorContaConrrente = ContaCorrente(nome: "Vitor")

// OS DOIS DA O MESMO RESULTADO, É MAIS UMA QUESTAO DE 'TYPE SAFETY' OU ALGO DO TIPO
vitorContaConrrente.pagamentoDaFatura(tipoDePagamento: "pix")
vitorContaConrrente.pagamentoDaFaturaComEnum(tipoDePagamento: .pix)

// Porém da um resultado legal quando é algo bem solido/fixo, como Meses do Ano:
enum Mes{
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}
