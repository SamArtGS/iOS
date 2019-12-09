
/*:
# Operaciones básicas en Swift
 
 Primero antes que nada, recuerda que todo se trata de aprender así que si algo no me di a entender puedes mandarme un correo. 😀
 
*/

// <- Con doble barra hacemos comentarios en el texto


// Para declarar constantes y variables:

let miConstante = "Hola soy un texto constante"

var miVariable = "Hola soy un texto variable"

// Para imprimir mi texto:

print(miConstante)
print(miVariable)

// Diferencia: Uno puede cambiar más adelante y otro no, var cambia, let no.

// Una declaración implícita y una explícita

//Implícita, Swift infiere el tipo de dato
var numero1 = 9

//Explícita, tu defines el tipo de dato
var numero2:Int = 10

//Es recomendable hacer declaraciones de variables explícitas para no hacer trabajar de más al compilador


/*:
## Tipos de datos

 Tendremos diferentes tipos de datos como:
 
 Int - Enteros
 
 Float - Decimales no tan precisos, menos gasto de memoria
 
 Double - Decimales muy precisos, más gasto de memoria
 
 String - Cadenas de texto
 
 Bool - Booleano, solo puede tener valores true o false, 0 o 1
 
 Character - Un caracter
 
 */

let unEntero:Int = 1
let unFlotante:Float = 3.1416
let unDouble:Float = 3.141592653589793238462643383279502884197169399375105820974
let unString:String = "Te pago el Uber"
let unBooleano:Bool = true
let unCaracter:Character = "F"

// Operaciones matemáticas

let numeroPrimero:Int = 1
let numeroSegundo:Int = 2

print(numero1+numero2)

5+10
10-5
4*10
5/2



//Requerimos de una biblioteca para potencia, raíz cuadrada, valor absoluto y max, min.

import Foundation

pow(10,2)
sqrt(90)

abs(-9)

max(10,20,500,180,4,78)
min(124,62,73,5,123,9)


/*:
## Arreglos, Sets y Diccionarios
 Los arreglos son un conjunto de elementos del mismo tipo, son muy utilizados para almacenar datos en nuestro código. Tienen un orden y pueden haber datos repetidos
 Los sets son un conjunto de elementos del cuál contendrá un orden, solo que no permitirá valores repetidos.
 Un diccionario es un conjunto de elementos que hacen referencia a otros, tienen un elemento y una llave, podemos acceder a esos elementos a través de la llave.
 */

//Al tipo de dato lo encerramos entre corchetes []. Si queremos un arreglo de 2 dimensiones o sea una matriz será [[Int]]
let unArreglodeNumeros:[Int] = [1,2,3,4]
let unaMatriz:[[Int]] = [[1,2],[3,4]]

let unArreglodeStrings:[String] = ["Samuel","Jorge","Giovanni","Derek","Francisco","Ricardo","Rodrigo","Alfonso"]
let unArreglodeFloats:[Float] = [3.1,3.2,3.3,3.4]
let unArreglodeBooleanos:[Bool] = [true,false,true,true,false]

//Otras formas de declarar una arreglo

var arregloDeString: Array<String> = ["Samuel","Jorge","Giovanni","Derek","Francisco","Ricardo","Rodrigo","Alfonso"]

//Para definir sets haremos un "tipo de dato" lamado Set()


var generosFavoritos: Set = ["Rock", "Clásica", "Hip hop"]

print("Mis géneros de música favoritos son \(generosFavoritos.count).")

//Para definir diccionaroios utilizaremos la siguiente sintaxis:
//Imaginemos que tenemos un registro de alumnos por número de lista


let diccionario:[Int:String] = [1:"Samuel",2:"Jorge",3:"Giovanni",4:"Derek",5:"Francisco",6:"Ricardo",7:"Rodrigo",8:"Alfonso"]

//Si quiero saber la persona de la lista número 3 basta con la siguiente expresión

print(diccionario[3]!)

//Para poder imprimir todos los valores o todas las llaves usaremos las siguientes instrucciones
print(diccionario.keys)
print(diccionario.values)


//Se han preguntado por qué agregué un signo ! a diccionario[3] !  -> Se verá más adelante en Opcionals


