#Project Euler 🧮

## El arte de las matemáticas 🎻

En internet puedes encontrar muchas cosas, desde videos de Yuya hasta cositas matemáticas interesantes. ProjectEuler son una serie de ejercicios matemáticos para entrenarte porque al fin y al cabo, la programación no existiría sin las matemáticas. **(Disponible en Netflix: The Imitation Game (El código enigma)🍿)**

###Los retos ejemplo:

#### Summation of primes

La suma de los primos menores que 10:
	
	$$ 2 + 3 + 5 + 7 = 17 $$
	
Encuentre la suma de todos los primos menores que 2 millones. ¿Suena mucho no?

La solución podemos verla como la siguiente:

```swift
	var numbers = Dictionary<Int,Bool>()

	for i in  2...2000000 {
    	numbers[i] = true
	}
	var max =  Int ( sqrt(Double(numbers.count)) )

		for i in numbers.keys.sort().minElement()!...max {
    		if numbers[i] == true {
        		var j = i * i
        		while(j <= numbers.count + 1) {
            		numbers[j] = false
            		j += i
        	}
    	}
	}

	var sum:IntMax = 0

	for i in numbers.keys {

    	if(numbers[i] == true) {
        sum += i
   }
   	}

	print(sum)

```