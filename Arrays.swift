import UIKit

//ARRAY
/* EM SWIFT, USAMOS ARRAY COMO ESTRUTURA DE DADOS PRINCIPAL - SEMELHANTE AO USO DE LIST<MOLDE> EM KOTLIN */

var numeroList = [1,2,3,4,5,9,6]
for numero in numeroList{
    print("numero -> \(numero)")
}

// VAMOS AGORA SIMULAR UM USO PARECIDO DE COMO É FEITO COM LIST<ALGO> EM KOTLIN

struct Card{
    let titulo: String
    let descricao: String
}

// let cardList: [Card] -> podemos declarar igual no Kotlin ficaria como val cardList: List<Card>
// ou deixar a linguagem inferir o type, igual abaixo:
let cardList = [Card(titulo: "titulo1", descricao: "descricao1"),
                Card(titulo: "titulo2", descricao: "descricao2"),
                Card(titulo: "titulo3", descricao: "descricao3"),
]

for card in cardList{
    print("titulo -> \(card.titulo) e descricao -> \(card.descricao)")
}

// COMO INICIALIZAR UM ARRAY COMO VARIO
var arrayVazio = Array<String>()
var arrayVazio2 = [Int]()
var arrayVazio3: [String] = []
// EM KOTLIN SERIA: var listVazia: List<String> = emptyList()

// Temos acesso a funcoes prontas como isEmpty
arrayVazio.isEmpty

//Mais Exemplos de funcoes e propriedades prontas:
numeroList.count
numeroList.first
numeroList.last
numeroList.isEmpty
numeroList.contains(2)
numeroList.min()
numeroList.max()
numeroList.firstIndex(of: 9) //verifica qual o indice que o elemento se encontra - lembre-se que o indice de Arrays inicia em zero

// ACESSSO DE ARRAY COMECA COM INDICE 0
numeroList[0] //vai retornar o primeiro elemento, numero 1

// INSERIR ELEMENTOS EM UM ARRAY
numeroList.append(7) //add element
numeroList.insert(8, at: 8) //add element at x position
numeroList += [9] //add element

// REMOVER ELEMENTOS DE UM ARRAY
numeroList.removeLast() //essas funcoes tem um retorno -> retorna qual elemento foi removido
numeroList.removeFirst()
numeroList.remove(at: 2)

// OUTRA FORMA DE PERCORRER UM ARRAY
for (index, elemento) in numeroList.enumerated(){
    print(index, elemento)
}

// FORMA MAIS PROFISSIONALMENTE USADA: - usada também para passar uma Lista de itens para serem replicados no VStack/HStack do View
for numero in numeroList{
    print(numero)
}

