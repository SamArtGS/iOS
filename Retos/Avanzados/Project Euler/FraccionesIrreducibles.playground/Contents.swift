import Cocoa

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



