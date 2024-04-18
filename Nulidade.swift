import UIKit

// -> NULIDADE <-
var celular: String? = "4002"
var celular2: String? = "8922"
var celularNulo: String?

// COM IF
if celular != nil{
print("nao eh nula")
}

// USANDO IF LET
if let celular{
    let newValue = celular
    print("usando if let -> \(newValue)")   //voce pode criar uma nova variavel dentro desse escopo
    print("usando if let -> \(celular)")    //ou seguir com a propria variavel que foi verificada que nao eh nula
}

// USANDO GUARD LET -> da o mesmo resultado que o let com elvis expression do Kotlin
var celular3: String

func usarGuardLet(nome: String?) -> String{
guard let celular3 = nome else{return "era nulo"}
return celular3
}

usarGuardLet(nome: celular)
usarGuardLet(nome: celularNulo)

/* Como ce percebeu, tem que criar uma funcao para usar o guard let e dar return */
/* Um exemplo de usuo mais 'profissional'  do Guard Let: */

func autenticarUsandoGuardLet (usuario: String?, senha : String?){
    guard let usuario = usuario, let senha = senha else {
        return  //apenas return só sai da funcao sem fazer nada. O bloco else é executado caso o usuario recebido por parametro for nulo
    }
    print("usuario foi verificado e nao eh nulo se printar -> \(usuario)")
    print("senha foi verificado e nao eh nulo se printar -> \(senha)")
    
}

autenticarUsandoGuardLet(usuario: "rafa", senha: "1234")


// USANDO ?? + RETORNO CASO NULO

print(celular ?? "Inexistente")
