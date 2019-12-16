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
 Switch CASE:
 Switch case es una versión mejorada de un condicional normal, es un condicional múltiple que va checando las posibilidades que se le establezcan y para cada posible condición podemos realizar diversas funciones.
*/


let unNumero:Int = 10

switch unNumero {
    case 1:
        print("Tenemos un número 1")
    case 2:
        print("Tenemos un número 2")
    case 10:
        print("Tenemos un número 10")
    default:
        print("Ninguno de los casos")
}

//Nótese los que han tenido otro lenguaje de programación en sus manos, no tenemos un break al final de los elementos, permitiendo así un código más seguro porque switch detendrá la búsqueda de elementos cuando tenga la primer coincidencia.

//En caso que queramos una sitaxis tipo C o java donde queremos múltiples casos sean matcheados en el mismo switch case, existe una palabra: **fallthrough** que nos permite mantenernos en el switch sin hacer el break.

let describirEntero = 5

var descripcionDeEntero = "El número \(describirEntero) es "

switch describirEntero{
    case 2,3,5,7,11,13,17,19:
        descripcionDeEntero += "un número primo"
        fallthrough
    default:
        descripcionDeEntero += "un entero."
}

//Puede ser usado también para capturar letras:

let caracter: Character = "a"

switch caracter {
case "a","A":
    print("Tenemos una a (puede ser mayúscula, contempla ambos casos)")
default:
    print("No sabemos qué tenemos")
}


//Podemos agregar contadores o rangos también a nuestro switch case:

let nosFaltan = 143
let cantidad:String

switch nosFaltan {
case 0:
    cantidad = "ningún"
case 1..<5:
    cantidad = "muy pocos"
    
case 5...12:
    cantidad = "pocos"
case 13...40:
    cantidad = "algunos"
case 40...50:
    cantidad = "considerables"
case 50...100:
    cantidad = "chiorro"
case _ where nosFaltan > 100:
    cantidad = "(inserte su grosería mexicana favorita)"
default:
    cantidad = ", no sé cuántos "
}
print("Nos faltan \(cantidad) lugares")



/*:
## CICLOS 🌀
 Los ciclos son elementos que nos permiten repetir ciertas acciones hasta que la condición que se le establezca se cumpla. Nos permite, entre otras cosas, recorrer un arreglo, cargar imágenes y más adelante cargar elementos a una tabla como de mensajes de WhatsApp.
 
 Podemos encontrar ciclos **For, while y repeat while**
 
 
 ### FOR
 
 Nos permitirá repetir una acción dadas las condiciones que le indiquemos.
*/

//Un ciclo for puede ser usado con los siguientes casos:


//Si damos un rango de un índice desde dónde comienza hasta dónde termina, realizará una cuenta de 1 en 1 hasta llegar al límite.

var tarea1: Int = 2
var tarea2: Int = 3
var tarea3: Int = 4
var tarea4: Int = 5

for indice in 1...10{
    print("\(indice) ")
    
    tarea1 += indice
    tarea2 -= indice
    tarea3 *= indice
    tarea4 /= indice
    
}

print("Averigua por qué tarea1 es \(tarea1).")
print("Averigua por qué tarea2 es \(tarea2).")
print("Averigua por qué tarea3 es \(tarea3).")
print("Averigua por qué tarea4 es \(tarea4).")


// VEN EL \(indice)? Eso se le dice concatenar y nos referimos a poder unir elementos de varios tipos, en este caso índice son de tipo entero a imprimirlos como String, podemos igual realizarlo con varios tipos de elementos, colocando el nobre de la variable entre paréntesis y antecedido por una antidiagonal:     \(variable).


//Operador de rango medio abierto: Define un rango que corre de "a" a "b" pero no incluye a "b". O sea no incluímos a 10

print("\n Operador de rango medio: ")

for rangoMedio in 0..<10{
    print(" \(rangoMedio) ")
}


//Rangos de un lado: Puedes recorrer un arreglo en un ciclo for dando un rango, en este caso names contiene 3 elementos, el 0, el 1 y el 2, y solo queremos los elementos 1 y 2.

let names:[String] = ["Samuel","Jorge","Rodrigo","Ricardo","Giovanni","Alfonso","Derek"]

print("\n De lado izquierdo: \n")
for nombre in names[1...]{
    print(nombre)
}

print("\n De lado derecho: \n")
for nombre in names[...4]{
    print(nombre)
}

print("\n De ambos lados: \n")
for nombre in names[1...4]{
    print(nombre)
}

//Impresión de diccionarios mediante FOR: Podemos imprimir el contenido de un diccionario con su llave mediante el siguiente ciclo for:

let animalesyNumPatas = ["araña":8,"hormiga":6,"gato":4,"cienpiés":100,"babosa":0]

for (nombreAnimal,numeroPatas) in animalesyNumPatas{
    print("El o La \(nombreAnimal) tiene \(numeroPatas) patas")
}


// Si solamente necesitamos recorrer y la variable no nos es útil, podemos omitirla con un guión bajo: _

var base = 2
var potencia = 5
var respuesta = 1

for _ in 1...potencia{
    respuesta *= base
}


// Si queremos determinar de cuánto en cuánto vaya recorriendo, además de los límites, tendremos que utilizar la sentencia completa:


let inicio = 1
let fin = 10

for contador in stride(from: inicio, to: fin, by: 2){
    print(contador) // 1 3 5 7 9
}

//En este paso definimos el inicio que es 1, sumará 2 e imprimirá el siguiente valor hasta que llegue a fin, 10. No se pasará del rango por lo que 11 no lo imprimirá al sumar a 9 + 2 = 11

/*:
 ### WHILE
Nos permite repetir una serie de comandos hasta que la condición colocada en el while sea falsa.
*/
//La estructura general de un while es:

var contador = 10
while contador>0{
    print(contador)
    contador-=1
}

//Las mismas opciones que teníamos anteriormente como compuertas lógicas AND, NOT y OR aplican:

contador = 10
while huellaDactilarAceptada &&  contador>0{
    print("Huella aceptada en \(contador)")
    contador-=1
}
//La diferencia que salta a la vista del repeat while es que **la función a repetir al menos se ejecuta una vez**. Al contrario de while donde si no cumple la condición, ni entraría a repetir el conjunto de instrucciones. Simulemos pasar de nivel en un videojuego.


var nivelActual:Int = 0, nivelFinal:Int = 5

let nivelCompletado = true //Si el nivel está completado, pasado.

repeat {
    if nivelCompletado {
        print("Has pasado el nivel \(nivelActual)")
        nivelActual += 1
    }
} while (nivelActual <= nivelFinal)

print("Has terminado el videojuego")


//Al menos una vez repetirá el conjunto de instrucciones dentro de repeat.

/*:
 ## TAREA
 
Con ayuda dentro del capítulo de **Control Flow** en el libro: "The Swift Programming Language", crear un algoritmo que, dada una coordenada (1,1), por ejemplo, determinar si está contenida dentro del cuadro central de -2 a 2 tanto en x como en y, si está en el origen o en alguno de los ejes.

*Puedes tomar ayuda de ésto, pero no te lo recomiendo, ya que no practicarás tu lógica computacional y eso no solo se aplica en Swift, sino en todo. Si tienes buena lógica, lo demás es pan comido.*
 
*/

let unPunto = (1,1)

switch unPunto{
    case (0,_):
        print("\(unPunto) está en el eje de las y")
    default:
        print("El punto \(unPunto) está fuera de del cuadrado")


}


