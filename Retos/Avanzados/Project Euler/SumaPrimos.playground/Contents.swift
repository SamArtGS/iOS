
import Cocoa


var numbers = Dictionary<Int,Bool>()

for i in  2...20000 { //Guardamos en un arreglo de tamaño 2,000,000 banderas
    numbers[i] = true
}
var max =  Int (sqrt(Double(numbers.count)))

numbers.keys.sorted().min()

for i in numbers.keys.sorted().min()!...max {
    if numbers[i] == true {
        var j = i * i
        while(j <= numbers.count + 1) {
            numbers[j] = false
            j += i
        }
    }
}

var sum:Int = 0
for i in numbers.keys {
    if(numbers[i] == true) {
       sum += i
      }
}

print(sum)



