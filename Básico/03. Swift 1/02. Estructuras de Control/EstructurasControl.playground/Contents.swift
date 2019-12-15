/*:
# Estructuras de control: Condicionales y Ciclos 🦆
 
 Escrito por: Samuel Arturo Garrido Sánchez
 
Las estructuras de control son elementos presentes en muchos lenguajes de programación y swift no es la excepción. Desde que aprendes If/else, switch case, for, while, etc, en otros lenguajes como Java, solamente podrás encontrar equivalentes en otros lenguajes. Nos permiten controlar el flujo de ejecuciones dentro de nuestro código para que se ejecute lo que queramos, en el momento que le indiquemos.
 
 
 ## Condicionales
 Los condicionales son elementos que nos permiten decir una pregunta con opción a verdadero/falso en cada pregunta, y realizando una serie de acciones en cada condición.
 
*/

//Un condicional if básico se declara como:

let numero:Int = 1

if numero<3{
    print("El número es menor a 3")
}else{
    print("El número es mayor o igual a 3")
}

//Donde la acción corresponde a una comparación, si cumple la condición realizará la acción contenida dentro del if, en caso contrario realizará otra u otras acciones


//OPERADORES LÓGICOS

//Los operadores lógicos en Swift correspoden a:

/*
 Para poder colocar los condicionales siguientes lo haremos mediante la siguiente nomenclatura:
 
 NOT :    !a
 AND :  a && b
 OR  :  a || b
 
*/


//EJEMPLO NOT
//Entra a la condición si es falso el falso, o sea verdadero. Podemos realizar un ejemplo con un acceso a un sistema

let accesoEntrada: Bool = false

if !accesoEntrada{
    print("ACCESO DENEGADO")
}else{
    print("ACCESO CORRECTO")
}

//EJEMPLO AND
//Entra a la condición si ambas condiciones son verdaderas, en caso que una o las 2 sean falsas no realizará las acciones dentro del if

let codigoPuertaCorrecto = true
let huellaDactilarAceptada = true

if codigoPuertaCorrecto && huellaDactilarAceptada{
    print("Bienvenido al sistema bancario")
}else{
    print("SEGURIDAD! 👮‍♂️")
}


//Puede llenarse de condiciones y hasta el momento que TODAS sean verdaderas, realizará el conjunto de acciones contenidas en el condicional


if codigoPuertaCorrecto && huellaDactilarAceptada && 5<10 && 10==10{
    print("Todas las condiciones se cumplieron")
}else{
    print("Alguna de las condiciones no se cumplió")
}


//Ejemplo OR
//Entra a la condición si ALGUNO de los elementos es verdadero. Con que uno se cumpla entrará a la condición.

let invitacionInvitado = true
let invitacionAcompañante = false

if invitacionInvitado || invitacionAcompañante {
    print("Pueden pasar a la peda")
}else{
    print("Nel pastel")
}



//Sí, se pueden combiar éstos, para ello necesitamos paréntesis como en las operaciones matemáticas:6*5+(1*(7+5)) = 42 ¿Qué haces primero?

let tengoLlave:Bool = true

if (codigoPuertaCorrecto && huellaDactilarAceptada) || tengoLlave {
    print("Puedo entrar a mi casa")
}else{
    print("No puedo entrar a mi casa")
}

/*:
## CICLOS 🌀
 Los ciclos son elementos que nos permiten repetir ciertas acciones hasta que la condición que se le establezca se cumpla. Nos permite, entre otras cosas, recorrer un arreglo, cargar imágenes y más adelante cargar elementos a una tabla como de mensajes de WhatsApp.
 
 Podemos encontrar ciclos **For, while y repeat while**
 
*/

//Un ciclo for puede ser usado con los siguientes casos:


//Si damos un rango de un índice desde dónde comienza hasta dónde termina, realizará una cuenta de 1 en 1 hasta llegar al límite.

for indice in 1...10{
    print("\(indice) ")
}


//Operador de rango medio abierto: Define un rango que corre de "a" a "b" pero no incluye a "b".

print("Operador de rango medio: ")

for rangoMedio in 0..<10{
    print(" \(rangoMedio) ")
}


//Rangos de un lado: Puedes recorrer un arreglo en un ciclo for dando un rango, en este caso names contiene 3 elementos, el 0, el 1 y el 2, y solo queremos los elementos 1 y 2.

let names:[String] = ["Samuel","Jorge","Rodrigo"]

for nombre in names[1...]{
    print(nombre)
}

//



