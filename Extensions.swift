import UIKit


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

// EXTENSION pode ser definida para extender uma funcionalidade (classe, método já existente)
extension Conta{
    func transferenciaBancaria(contaDestino: Conta, valor: Double){
        sacar(valor: valor)
        contaDestino.depoositar(valor: valor)
    }
}

let ricardoConta = Conta(nome: "Ricardo")
ricardoConta.depoositar(valor: 200)

let vitorConta = Conta(nome: "Vitor")
vitorConta.saldo

ricardoConta.transferenciaBancaria(contaDestino: vitorConta, valor: 50)
ricardoConta.saldo
vitorConta.saldo

// PODEMOS POR EXEMPLO, USAR EXTENSION PARA ADICIONAR NOVAS FUNCIONALIDADES A MÉTODOS CLASSES VINDAS DO PROPRIO SWIFT

// Por exemplo vamos fazer esta funcao aqui:
func contarCaracteresEmString(texto: String) -> Int{
    return texto.count
}

let texto = "Jetpack Compose"
contarCaracteresEmString(texto: texto)

// E colocada como uma extensao de String:
extension String{
    func contarCaracteresEmString() -> Int{
        return self.count
    }
}

texto.contarCaracteresEmString()

// Fazendo Extension de Métodos e Structs que já existem dentro de Swift, podemos nos deparar com códigos com 'self' e 'Self'
/* Num caso desse -> 'self' se refere por exemplo a 'it' em Kotlin: uma instancia do valor recebido quando se usa a funcao
   Já o 'Self', iria se referir ao 'type' -> ao tipo de dado */

//Exemplo:
extension Int {
    func somaNumeroCom(_ numero: Self) -> Self {
        return numero + self
    }
}
let numero = 10
let resultadoSoma = numero.somaNumeroCom(20)


// Podemos reparar que 'Self' se refere a Int (já que estamos fazendo uma extension de Int)
// Porém 'self' se refere ao valor da variavel 'numero', que foi aplicada um .somaNumeroCom()

// Em um caso desse, também, o 'Self' poderia ser substituido pelo tipo de dados 'Int' tranquilamente sem dar erro no codigo
// O 'Self' foi mais para demonstrar sua existencia em Swift
