# Project Euler 🧮

## El arte de las matemáticas 🎻

En internet puedes encontrar muchas cosas, desde videos de Yuya hasta cositas matemáticas interesantes. ProjectEuler son una serie de ejercicios matemáticos para entrenarte porque al fin y al cabo, la programación no existiría sin las matemáticas. **(Disponible en Netflix: The Imitation Game (El código enigma)🍿)**

###  Los retos ejemplo:

#### Suma de primos 🤠

La suma de los primos menores que 10:
	
<img src="https://latex.codecogs.com/gif.latex? f(10) = 2 + 3 + 5 + 7 = 17 " /> 
	
Encuentre la suma de todos los primos menores que 2 millones. ¿Suena mucho no?

La solución podemos verla como la siguiente:

```swift
var numbers = Dictionary<Int,Bool>()

for i in  2...20000 { //Guardamos en un arreglo de tamaño 2,000,000 banderas, pero como no quiero ver mi computadora morir, lo dejamos en 20000
    numbers[i] = true
}
var max =  Int ( sqrt(Double(numbers.count)) ) //Obtenemos la raíz de la cantidad de números **

for i in numbers.keys.sorted().min()!...max {
    if numbers[i] == true {
        var j = i * i
        while(j <= numbers.count + 1) {
            numbers[j] = false
            j += i
        }
    }
}

var sum:IntMax = 0
s
for i in numbers.keys {
	if(numbers[i] == true) {
       sum += i
  	}
}

print(sum)

```

Ténganse en cuenta que la complejidad computacional de éste problema es alta (Tiempo que dura a mayor cantidad de números). Así que si logran bajarla les regalo un Totti. 🥠

Resultado del algoritmo: **21171191**

#### La suma de los caminos 🏔

Iniciando en la punta del triángulo y moviéndose hacia el número adyacente más grande, la suma total de punta a base de éstos números es 23.

<img src="123.jpeg" alt="Kitten"
	title="A cute kitten" width="150" height="160" />

<img src="https://latex.codecogs.com/gif.latex? f(10) = 3 + 7 + 4 + 9 = 23 " /> 


Ahora, hay que realizar un algoritmo para el siguiente triángulo:

![](456.jpg)

```swift
let levels: [[Int]] = [
    [04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23],
      [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
        [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
          [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
            [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
              [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
                [41, 41, 26, 56, 83, 40, 80, 70, 33],
                  [99, 65, 04, 28, 06, 16, 70, 92],
                    [88, 02, 77, 73, 07, 63, 67],
                      [19, 01, 23, 75, 03, 34],
                        [20, 04, 82, 47, 65],
                          [18, 35, 87, 10],
                            [17, 47, 82],
                              [95, 64],
                                [75]]

func p18() -> Int {
    var lastLevelScores = levels[0]
    for level in levels[1..<levels.count] {
        var levelScores: [Int] = []
        for i in 0..<level.count{
            let betterPathScore = max(lastLevelScores[i], lastLevelScores[i + 1])
            levelScores.append(level[i] + betterPathScore)
        }
        lastLevelScores = levelScores
    }

    return lastLevelScores[0]
}
p18()

```

Resultado del algoritmo: **1074**

#### Fracciones irreducibles ✂️
Considerando la fracción n/d, donde n y d son enteros positivos, si n<d y el máximo común divisor entre ambos es 1 a esto se llama una fracción irrreducible. Si tenemos una lista de todas las fracciones irreducibles positivas menores a un número k el cuál d ≤ k, por ejemplo k=8.

d ≤ 8

Fracciones irreducibles posibles:

1/8, 1/7, 1/6, 1/5, 1/4, 2/7, 1/3, 3/8, 2/5, 3/7, 1/2, 4/7, 3/5, 5/8, 2/3, 5/7, 3/4, 4/5, 5/6, 6/7, 7/8

Son en total 21 fracciones irreducibles posibles con d menor o iguales a 8.

¿Cuántas fracciones irreducibles será posibles si el número k es 1,000,000 (d ≤ 1,000,000)?

```swift
var limite:Int  = 1_000_000

var phi:[Int] = Array(0...limite)

var resultado:Int = 0

for i in 2...limite{
    if(phi[i] == i){
        for j in i...limite where j % i == 0{
            phi[j] = phi[j]/i*(i-1)
        }
    }
    resultado += phi[i]
}
print(resultado)

```

Corriendo el algoritmo tendremos que iterar dentro de las fracciones y comprobar que su máximo común divisor es 1 y luego ir contando pero esto nos eleva la complejidad computacional demasiado. Así que, ¿puede haber una mejor manera de resolverlo?

Resultado del algoritmo: **303963552391**

### AHORA QUE YA SE MOSTRARON LOS EJEMPLOS 👀

###  Retos a resolver:


**1) Yo te he visto antes 👁** 

¿Pueden ver que el número 125874 multiplicado por 2 es 251748? Están compuestos por los mismos dígitos (1,2,5,8,7,4) pero en diferente orden. Ahora encuentra el menor número positivo tal que si lo multiplicamos por 2, luego por 3, luego por 4, luego por 5 y  por último 6, cada operación resultará en el mismo número n pero con sus dígitos en diferente orden.

**2) El clásico 🥁** 

La serie de Fibonacci es: 1,1,2,3,5,8,13,21... en el cuál un número se obtiene sumando 2 anteriores, ahora, encuentra la suma de los números pares de la serie de Fibonacci menores a 4,000,000.

**3) Primos circulares ⚽️** 

El número 197 es llamado un primo circular porque si "roto" sus dígitos (192,971,719) todos ellos son primos igual. De los primos menores a 100 éstos son circulares:

##### 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79 y 97.

¿Cuántos primos circulares habrá hasta 1,000,000?


### Buena suerte y que la fuerza te acompañe ⚔️
