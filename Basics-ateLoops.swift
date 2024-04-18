import UIKit

// VAR para Variaveis
// LET para Constantes
var variavel = "Hello, playground"
print(variavel)
let constanteNumero = 22
var segundoTexto = "hoy"
print("Assim que imprimimos variaveis -> \(variavel) e -> \(constanteNumero)")
var textoContatenado:String = variavel + segundoTexto
print(textoContatenado)

//TIPOS PRIMITIVOS
var nome: String = "Rafael"
var idade: Int = 22
let nascimento = 1999
var quantoSouLindo: Double = 9.5
let souFeio: Bool = false
var letra: Character = "D"

var atribuirValor: Bool // <- CASO TU FOR ATRIBUIR VALOR DEPOIS, VAI TER QUE TYPAR
atribuirValor = false //var atribuirValor: <<error type>> -> da esse erro se nao for typada


//TYPEALIAS
typealias Estudante = String
var aluno1: Estudante = "Joao"
var aluno2: Estudante = "Maria"

//OPERACOES ARITMETICAS
10+2
10-2
5*2
5/2 //numeroInteiro div por numeroInteiro = numeroInteiro
5.0/2 //Double div por numeroInteiro = Double
5%2 //ou seja nao eh um numero par
10%2 //ou seja eh par
(5+2)*2

var numero1 = 2
var numero2 = 4
var numero3 = numero1 + numero2

numero1 += 1 //mesma coisa que -> numero1 = numero1 + 1 - mesma coisa em Kotlin
numero1 -= 1 //podem ser usados outros operadores, como subtracao, multiplicacao ...
numero1 *= 1 //em Kotlin eh igual

//DESAFIO 1 - CELSIUS PARA FAHRENHEIT
// formula: F = C *9/5 + 32

var celsius:Double = 32
var fahrenheit = celsius*9/5+32
print(fahrenheit)

//DESAFIO 2 - Calculo de media
var nota1 = 6.0
var nota2 = 3.5
var nota3 = 7.0

var media = (nota1+nota2+nota3) / 3
print (media)

// OPERADORES RELACIONAIS E LOGICOS
5 == 7
nota1 != nota2
nota1 > nota2
nota2 < nota1
nota3 >= nota1
nota3 <= nota1

// and &&
// or ||
// not !

// --> CONDICIONAIS <--

if nota3 > nota1 {
    print("nota 3 eh maior")
} else{
    print("nota 3 eh menor")
}

// Aninhamento de If, Else If, Else -> mesma coisa que em Kotlin, so que nao fica bem separado
// ai as vezes parece meio 'diferente', mas eh igual
if (nota3 > nota1 && nota1 > nota2){
    print("nota 3 eh maior")
} else if 1>2{
    //...
} else{
    //...
}
//else eh opcional
// da pra usar ( ) nas condicoes do if igual em Kotlin

//Existe um modo rapido de if else
nota3 >= 6 ? print("Passou da media") : print("Abaixo da media")

var expanded:Bool = false
expanded = !expanded
print(expanded)

//INTERVALO DE VALORES
var intervaloFechado = 10...20  //10 a 20
var intervaloAberto = 10..<20   //10 a menor que 20 (ou seja, 19)

//SWITCH CASE
var numberToVerify = 15
switch numberToVerify{
case 0...10: print("numero esta entre 0 a 10")
case 10...20: print("numero esta entre 10 a 20")
default: break
}

var animal = "ornitorrinco"
switch animal{
case "cachorro", "hamster": print("animal domestico")   //tem como verificar dois valores na mesma linha
case "gato": print("animal domestico")
default: print("animal selvagem")
}

//Criando variavel dentro do Case para fazer alguma verificacao ou algo do tipo
switch numberToVerify{
case let x where x % 2 == 0: print("o numero é par")    //aqui ele cria uma variavel temporária para fazer a verificacao dentro do 'case'
default: print("numero impar")
}

//Aqui é um exemplo igual o anterior, mas com uma sintaxe bem diferente
switch numberToVerify{
case _ where numberToVerify % 2 == 0: print("numero par")   //o _ substitui a criacao da variavel, como se fosse um it ou this em Kotlin
case _ where numberToVerify % 2 != 0: print("numero impar")
default: break
}

//Numeros aleatórios
var numeroAleatorio = Int.random(in: 0...10)    //existe uma funcao dentro da classe Int que faz isso. Ela só pede pra mandar um Range<Int>

// --> LOOPS <--

// For
for i in 1...10{
    print(i)
}

// While
var count = 1

while count <= 3 {
    print("hello world")
    count+=1
}

// Repeat While (do while)
count = 1 //resetando o valor da variavel de novo para executar adequadamente esse codigo sem precisar comentar o codigo de cima
repeat{
    print("eu sou o repeat while")
    count+=1
} while count <= 3

// Break e Continue para Loops
count = 0
while count<10 {
    count+=1
    if count == 5{
        //break
        continue
    }
    print(count) //se o print estiver em baixo do escopo do if com um 'continue' dentro, ele literalmente pula o que ta em baixo do if
    //aqui no caso, ele pula o 5
}

//Desafio - imprimir valores pares de 1 a 10
for i in 1...10{
    if i % 2 == 0{
        print("apenas valores pares -> \(i)")
    }
}
