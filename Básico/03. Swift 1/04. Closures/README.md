
# Closures 🐳
 
 Los closures son bloques funcionales que pueden ser encontrados en los códigos. Son similares a los bloques en C o para los familiazados con otros lenguajes de programación: Lambdas. Podemos decir que son funciones sin nombre o que se realizan un conjunto de acciones para darle valor a una variable.
 
 **La sintaxis básica de un closure es:**
 
 ```swift
 {
    (parametros) -> valorRetorno in
            instrucciones
 }
 ```
 
 
 
Por ejemplo, tenemos en swift los arreglos poseen un método que se encarga de ordenar los tipos de datos, llamado sorted(by:) que en by debemos colocar una función que se encargue del comparador.

 ```swift
let nombres = ["Christopher","Rodrigo","Samuel","Jorge","Derek","Francisco","Giovanni"]

func ascendente(_ s1: String, _ s2: String) -> Bool{
    return s1>s2
}

let sorteados = nombres.sorted(by: ascendente)
 ```
 
Los closures nos permiten hacerlos tan cortos como deseemos y con el paso de las versiones podemos incluso reducir más las líneas de código de arriba.

Ahora dando ejemplo de closure básico donde a by le demos una función para no tener 2:

 ```swift
let sorteadosPorClosure = nombres.sorted(by: { (s1:String, s2:String) -> Bool in //Tengo s1 y s2 Strings como parámetros, y necesito un booleano como regreso.
    return s1 > s2
})
 ```
### Más corto 🐠
**Infiriendo el tipo de datos de entrada y retorno. **

Podemos colocar s1 y s2 sin decirle explícitamente qué tipo de variable String, bool son, por lo que Swift automáticamente lo inferirá y sabrá que devolvernos.

 ```swift
let sorteadosMasCorto = nombres.sorted(by: { s1,s2 in
    return s1>s2
})
 ```
### Más corto 🐟
**Argumentos cortos dados por $numero**

Swift automáticamente provee argumentos dados por número donde pueden ser referidos por $0, $1, $2 (los que hayan llevado Java sabrán de esto). Así pues ni siquiera necesitamos definir las variables s1 o s2, ni su tipo, solo sabemos que llegarán 2 variables y será $0 y $1 y los compararemos.

 ```swift
let sorteadosTodaviaMasCorto = nombres.sorted(by: { $0 > $1 })
 ```
 
### Ya más corto no se puede. 🐬
**Métodos operadores.**

Descaradamente Swift identifica caracteres como <, > para ordenar elementos por ejemplo y solamente colocando en by: alguno de los símbolos se encargará del resto de la comparación y devolver el booleano.

 ```swift
let sorteadoDescarado = nombres.sorted(by: >)
 ```

Por ejemplo ambas funciones debajo son equivalentes:

 ```swift
let enteroNormal:Int = 7

let enteroClosure: () -> Int = { return 7 }
 ```
O igualmente a:

 ```swift
let enteroClosure2: Int = {()->Int in
    return 7
}()
 ```
### Para no profundizar tanto en el tema 🦈
 
Será de mucha ayuda en Firebase y otros temas, lo dejamos que son funciones que no son necesario ponerle func y con la estructura entre paréntesis, parámetros y variables de retorno podremos hacer muchas cosas. Para los que sepan más del tema: Programación funcional, los invito a programar todo en closures, nada de funciones normales.



