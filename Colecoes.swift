import UIKit

// --> SETS <--

// SETS - em Kotlin é a funcao SetOf -> 'val frutas = MutableSetOf("Maca", "Pera", "Manga")' // Existe versao Mutable e 'nao mutable' SetOf
// EM SETS, NAO EXISTEM DADOS DUPLICADOS -> Dados adicionados duplicados são ignorados
// EM SETS NAO TEM INDICE, NAO IMPORTA, SEMPRE MUDA O INDICE DOS ELEMENTOS A CADA EXECUCAO

// Como criar um Set vazio
var emptySet: Set<String> = []

// Criar um Set com Elementos
var frutasSet = Set(["Maca", "Pera", "Manga"])

// USAR SETS PARA REMOVER ELEMENTOS DUPLICADOS DE UM ARRAY
var arrayFruits = ["Maca", "Maca", "Pera", "Manga"]
var setFruits = Set(arrayFruits) //coloca um Array dentro da funcao Set() para que seja entao tirado elementos repetidos
print(setFruits)

// OUTRAS FUNCOES DE SET
setFruits.contains("Manga")

// TAMBEM DA PARA ITERAR COM UM FOR IGUAL É FEITO NOS ARRAY
for fruit in setFruits{
    print(fruit)
}

// CRUD NO SET
setFruits.insert("Banana")
setFruits.remove("Pera")

// --> TUPLAS <--

// TUPLAS - em Kotlin é a funcao Pair -> 'var pair = Pair(1, "Kotlin")'
let pessoa = ("Alice", 30)
pessoa.0 //Alice
pessoa.1 //30

/* Named Tuples */
let pessoa2 = (nome: "Alice", idade: 30)
pessoa2.nome
pessoa2.idade

// Tuplas podem ser Valores iguais e diferentes. Também, PODE ter MAIS DE DOIS Valores
let pessoa3 = (nome: "Alice", idade: 30, CPF: 00722055521, nascimento: 1998)

// Ou seja -> Tuplas funcionam de maneira parecida com uma Data Class em Kotlin e Struct em Swift (na parte de criar um Molde)

// Tambem pode ser feita a DESESTRUTURACAO dos Dados
var (nomePessoa2, idadePessoa2) = pessoa2
print(nomePessoa2)
print(idadePessoa2)

// Da pra IGNORAR um elemento na DESESTRUTURACAO
var (_, idadeTesteDesestruturacao) = pessoa2
print(idadeTesteDesestruturacao) //só essa variavel foi Desestruturada, o elemento do underline foi ignorado

// --> DICIONARIOS <--

// EM KOTLIN, SÃO OS MAPS

/* val student = mutableMapOf<String, String>()
 student["name"] = "Alice"
 student ["idade"] = 30
 val countryCodes = mapOf("US" to "1", "UK" to "44", "CA" to "1") */

// CRIAR UM DICIONARIO VAZIO
let emptyDictionary: Dictionary<String, Int> = [:]

// CRIAR UM DICIONARIO COM ELEMENTOS
var pricesDictionary = ["Maca" : 1, "Banana" : 4, "Laranja" : 2]

//ADICIONAR MAIS ELEMENTOS
pricesDictionary["Pera"] = 2

// ACESSAR CHAVE
print(pricesDictionary["Maca"]) //retorna uma opcional, ja que o Swift nao tem certeza se a chave realmente existe

// Outras funcoes
pricesDictionary.count
pricesDictionary.isEmpty
pricesDictionary.values
pricesDictionary.keys

// ATUALIZAR VALOR
pricesDictionary.updateValue(2, forKey: "Maca") //se usar o updateValue e a chave nao existir, sera criada uma nova. Se existir, atualizara o Valor

// REMOVER VALOR
pricesDictionary["Maca"] = nil
pricesDictionary.removeValue(forKey: "Pera")

// ITERAR O DICIONARIO

for (fruta, preco) in pricesDictionary{
    print("a fruta \(fruta) tem valor de \(preco)")
}



