/*:
 # Funciones
 
 Dentro del mundo de la programación podemos separar intrucciones de manera que todas cumplan un mismo fin, y llamamos a este conjunto cuando nosotros las necesitemos. O de otra forma, pedazos de código que realizan una tarea específica.
 
 Imaginemos una caja negra o una máquina de tortillas, que puede que le insertes algo o no y puede o no devolverte un producto, en este caso insertas masa y por dentro alguien se encargó de armarla de tal manera que te devuelva tortillas calientitas.
 
A cada conjunto de instrucciones se le llama función. Tiene nombre, tipo de datos o elementos que acepta y el tipo de dato que devuelve. Cuando queremos usar una función diremos que llamamos a la rutina o a la función.
 
 
 */

//Para definir una función en Swift utilizaremos la siguiente sintaxis:

//Para funciones simples, sin valores de entrada ni de salida:

func comprarTortillas(){
    let precio = 10
    print("Haciendo tortillas")
    print("Aquí tienen son \(precio) peso")
}

//Si queremos hacer todas las cosas contenidas dentro de la función "comprarTortillas" la indicaremos debajo con 2 paréntesis para indicarle que es una función.

comprarTortillas() //<- Con esto se imprime debajo el resultado

//Como ya se había dicho antes puede que la caja negra necesite cosas de entrada y nos de cosas

//Para funciones que le "metemos ingredientes" o más formalmente, tienen parámetros:

func comprarTortillasConPrecio(precio:Int){
    print("Sus tortillas calientitas, son \(precio) peso")
}

//Si queremos hacer uso de la función tendremos que igualmente poner "comprarTortillasConPrecio()" pero ésta vez dentro de los paréntesis TENEMOS que colocar un número para que funcione, ya que si solo colocamos "comprarTortillasConPrecio()", nos marcará un error.

comprarTortillasConPrecio(precio: 20)

//NÓTESE que podemos presionar la tecla TAB -> para completar automáticamente código, y que en funciones que reciben parámetros nos aparecerá una descripción del dato que necesitamos colocar.

//En este caso si colocamos comprarTortillasConPrecio(20) nos marcará error, ya que tenemos que colocar un agregado para identificar qué elemento colocamos. Para aclarar éste término ofrecemos el siguiente ejemplo:

func tortilleriaLaFlor(vendedor:String,comprador:String,cantidad: Int, precio:Int){
    print("\nQuiubo Don \(vendedor), ¿me puede dar \(cantidad) kilo(s) de tortillas?")
    print("Lléguele \(comprador), son $\(precio) pesos")
    print("Cámara Don \(vendedor)! \n")
}

//Si queremos ejecutar todo lo que se encuntra en "tortilleriaLaFlor", necesitamos pasarle los datos en orden: Hasta el momento lo de arriba no hace nada, hasta que llamemos a la función y le demos los datos que pide, realizará todas las acciones.

tortilleriaLaFlor(vendedor: "Rata", comprador: "Mi Beny", cantidad: 2, precio: 30)

//Para funciones que "nos devuelven productos" necesitaremos especificar qué cosa nos devuelven.

//Dejando las tortilleras de un lado, imaginemos que tenemos una función que hace ciertas operaciones matemáticas con los valores que les damos:

func operaciones(x:Int,y:Int,z:Int){
    let resultado = (x*y+z)/10*z
    print("El resultado es: \(resultado)")
}

//Si queremos que no solo nos imprima el valor resultado necesitamos ese resultado para otras cuentas, ¿Cómo le hacemos? A la acción de que a una función le podamos sacar ese resultado para usarlo más adelante lo llamamos retorno de la función o qué valor retorna.

//Después del nombre de la función y los parámetros se coloca una flecha -> y luego el tipo de elemento o dato que queremos de vuelta, además de colocar al final o en algún lado dentro de la función la palabra return seguida de lo que queremos regresar.

func operacionConRetorno(x:Int,y:Int,z:Int) -> Int {
    let resultado = (x*y+z)/10*z
    print("El resultado es: \(resultado)")
    return resultado
}

//Ahora podemos hacer:
operacionConRetorno(x: 10, y: 10, z: 10)

//Todo ello contiene un valor, por lo que podemos imprimir el valor:
print(operacionConRetorno(x: 10, y: 10, z: 10))

//Asignarlo a una variable:

let numeroResultado:Int = operacionConRetorno(x: 10, y: 10, z: 10)

//Usar dicha variable para otras cosas:

print(5+1+numeroResultado)

//O directamente usarlo como un número:

print(10+10+operacionConRetorno(x: 10, y: 10, z: 10))


//Ahora, podemos retornar todo tipo de cosas, desde strings, booleanos o cualquier cosa que necesitemos para posteriormente usarlo.

func saludar(persona:String)->String{
    let saludo = "Hola, \(persona)!"
    return saludo
}

//Cuál es la diferencia entre:
saludar(persona: "Rodrigo")
// Y
print(saludar(persona: "Rodrigo"))

//Podemos llamar funciones dentro de otras funciones:


func imprimirContar(nombre:String) -> Int{
    print(nombre)
    return nombre.count //-> Cuenta la cantidad de letras en la palabra
}

func imprimirSinContar(nombre:String) {
    let _ = imprimirContar(nombre: nombre)
    imprimirContar(nombre: nombre) //A ver analicen qué pasó aquí, no hay nada mal pero como que algo no cuadra
}

imprimirContar(nombre: "Hola Mundo")
imprimirSinContar(nombre: "Hola Mundo")

//Funciones con múltiples valores de retorno

//Puedes utilizar tuplas como un tipo de valor de retorno, dando así múltiples valores de retorno.

func minMax(arreglo: [Int]) -> (minimo: Int, maximo: Int){
    var valorMinimoActual = arreglo[0]
    var valorMaxActual = arreglo[0]
    
    for numero in arreglo[1..<arreglo.count]{
        if numero < valorMinimoActual{
            valorMinimoActual = numero
        }else if numero > valorMaxActual {
            valorMaxActual = numero
        }
    }
    
    return (valorMinimoActual,valorMaxActual)
}

//La función anterior dado un arreglo de números enteros, nos devuelve el número mayor y menor de ese conjunto de elemento, lo probamos:

let valoresMinMax = minMax(arreglo: [13,12,17,15,7,4,8,10])

print("Valor mínimo: \(valoresMinMax.minimo)")
print("Valor mínimo: \(valoresMinMax.maximo)")


//Para finalizar: cada vez que queremos utilizar una función, tenemos que colocar sus parámetros si contiene pero delante de éstos tiene como el dato que alojará, ejemplo:

// funcion(nombre:"Samuel")

// A esto de nombre: "", se le conoce como Argument Labels si queremos quitarlo podemos poner un guión bajo al inicio de nuestro argumento para que no sea requerido cuando lo necesitemos

func ejemploFuncion(_ numero:Int){
    print(numero)
}
ejemploFuncion(10)

// Y otras de las bondades de Swift es que nos permite añadir palabras intermedias que nos permitan comprender mejor las funciones, a todo esto se le conoce como Argument Labels.

func saludar(nombre : String, de pueblo : String) -> String {
    let saludo = "Hola soy \(nombre) y provengo de \(pueblo)"
    return saludo
}

//El agregado "del", podemos agregar palabras para que las funciones las podamos leer como una oración humana, todo forma parte de un AZÚCAR SINTÁCTICO que permite hacer mejores códigos, más entendibles y más limpios. Cuando llamemos a la función colocaremos la etiqueta y la variable será utilizada en la definición de la función

let saludoSam = saludar(nombre: "Samuel", de: "Cunduacán")
print(saludoSam)



