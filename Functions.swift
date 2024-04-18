import UIKit

// FUNCOES BASICAS EM SWIFT
func soma(numero1:Int , numero2:Int){
    var soma = numero1 + numero2
    print("soma -> \(soma)")
}

soma(numero1: 1, numero2: 2)

// PARA CHAMAR A FUNCAO SEM PRECISAR NOMEAR OS PARAMETROS DURANTE A PASSAGEM DE ARGUMENTOS:
func soma2(_ numero1:Int , _ numero2:Int){
    var soma = numero1 + numero2
    print("soma2 -> \(soma)")
}

soma2(1,2)

// Ou também: (argument label)
func soma3(_ numero1:Int , mais numero2:Int){
    var soma = numero1 + numero2
    print("soma3 -> \(soma)")
}

soma3(1, mais: 2)

// FUNCOES COM RETORNO:
func soma4(numero1: Int, numero2: Int) -> Int{
    return numero1+numero2
}

var resultadoDaSoma = soma4(numero1: 1, numero2: 2)
print("resultado da soma4 -> \(resultadoDaSoma)")

func verificarSeAdulto(idade: Int) -> Bool{
    if idade>=18 {
        return true
    } else {
        return false
    }
}

var resultado: Bool = verificarSeAdulto(idade: 18)
print("maior de idade -> \(resultado)")

// ALTERAR VALOR DO PARAMETRO RECEBIDO
func somaNumero(_ numero: inout Int) {  //'inout' funciona igual passagem de valor por referencia em C
    numero += 1
    print(numero)
}
var valor = 10
somaNumero(&valor)  //por isso, inclusive, teve-se de usar o operador '&' para acessar o endereco de valor da variavel (e nao endereco de memoria)
print(valor) // será exibido 11

// tem que fazer dessa forma, porque por padrao, os parametros sao instanciados como sendo constantes.
// isso é mais uma feature, provavelmente nao sera muito usado
