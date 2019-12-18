/*:
 # Enumeraciones
 
 Las enumeraciones definen un tipo común en un grupo de datos relacionados y permite trabajar esos valores como tipos seguros para tu código. Lo que estoy diciendo parece un poco enrredado pero pueden verlo como una lista del supermercado o de casos donde pueden hacer referencia a estos de manera sencilla.
 */

//Creo que con un ejemplo se aclararía mejor:


//Definimos una enumeración donde damos los posibles casos que puede tomar una acción

enum direccionBrujula{
    case norte
    case sur
    case este
    case oeste
}

//Luego definimos una dirección que puedes tomar, o mejor dicho a una variable le asignamos un caso dándole una de las posibles opciones de la enumeración.

var direccionTomada = direccionBrujula.este
//Una vez que Swift sabe que direccionTomada es de tipo caso de enumeración podemos cambiarla a lo largo del código fácilmente colocando el cambio con .caso


direccionTomada = .este
direccionTomada = .oeste
direccionTomada = .norte

//Y podemos usar estos casos para un switch Case:

switch direccionTomada {
    case .norte:
        print("Vas al norte")
    case .sur:
        print("Vas al sur")
    case .este:
        print("Vas al este")
    case .oeste:
        print("Vas al oeste")
}

//Vamos a realizar otras enumeraciones:

//ni siquiera tenemos que ir case por case, solo separarlo por comas.

enum Planet{
    case mercurio, venus, tierra, marte, jupiter, saturno, urano, neptuno, pluton
}

//Misma instrucción, una variable que contenga a la enumeración:

var planetaMisterioso = Planet.tierra

//Podemos cambiar el valor que tiene "planetaMisterioso" fácilmente si colocamos el nuevo valor de su enumeración, si es var:

planetaMisterioso = .tierra

switch planetaMisterioso {
    case .tierra:
        print("Hay vida")
    default:
        print("No puede haber vida ahora")
}

//Ahora, si queremos contar cuántos casos en las enumeraciones hay tenemos que colocar en la enumeración la palabra CaseIterable para luego llamarlo.

enum bebidas: CaseIterable{
    case cafe,te,jugo,agua,horchata,jamaica,refresco,cerveza,vino,tepache,pulque
}

let numeroBebidas = bebidas.allCases.count
print("Tenemos \(numeroBebidas) bebidas en el menú")




//Ahora, por qué usaría enumeraciones en lugar de un arreglo y un switch case: dime por tí mismo. Haremos el ejemplo anterior pero con arreglos:

let bebidas2 = ["cafe","te","jugo","agua","horchata","jamaica","refresco","cerveza","vino","tepache","pulque"]
let numeroBebidas2 = bebidas2.count
print("Tenemos \(numeroBebidas2) bebidas en el menú")


//Ahora haremos el caso que soy el mesero y pido la orden, primero con enumeraciones y luego con el arreglo

var bebidaElegida = bebidas.cafe

switch bebidaElegida {
    case .cafe:
        print("Pediste café")
    case .agua:
        print("Pediste agua")
    case .horchata:
        print("Pediste horchata")
    default:
        print("Otra bebida")
}

var bebidaElegidaArreglo:String = "cafe"

switch bebidaElegidaArreglo {
    case "cafe":
        print("Pediste café")
    case "agua":
        print("Pediste agua")
    case "horchata":
        print("Pediste horchata")
    default:
        print("Pediste otra bebida")
}

//Ahora pongamos un ejemplo más complicado donde un arreglo no podrá sernos de gran utilidad: Lectura de un código de barras o también un código QR.

//Para nuestro ejemplo UPC es el código de barras que todos vemos en los productos del súper donde cada una de las barras significa un número del 1 al 9. Cada código de barras tiene un dígito del sistema, seguido por 5 números de código de manufactura, seguido por 5 códigos del producto y terminando con un número de verificación de que ha sido leído correctamente el código de barras.

//Pero no solo queremos que nuestro escáner lea UPC sino también QR, que traducido a números un QR es una cadena de texto de hasta 2953 caracteres.

//Entonces nuestra enumeración contendrá estos 2 casos: QR y UPC.

enum Codigo{
    case UPC(Int, Int, Int, Int)
    case QR(String)
}

//Ahora imagina que lees tu primer código y detectas que es de barras UPC, tendrías que colocar

var codigoProducto = Codigo.UPC(7, 98124, 82572, 4)

//Y luego nos llega un QR que lo leemos y resulta en:

codigoProducto = .QR("Afkjsgnjngn23841r2nvooc!")

//Para luego comparar, si es UPC o QR y recuperar sus datos

switch codigoProducto {
    case .UPC(let numeroSistema, let numeroManufactura, let numeroProducto, let verificacion):
        print("El código de barras me dice que en el producto, el número del sistema es: \(numeroSistema), el número de la manufactura es \(numeroManufactura), el número del producto es \(numeroProducto), y el número de verificación es: \(verificacion)")
    case .QR(let codigoLeido):
        print("El código QR leído es: \(codigoLeido)")
}
//Ya al tener esta estructura de éstos Switches es sencillo capturar todos los casos y qué contiene cada uno. Ahora quiero que piensen en implementar algo similar sin enumeraciones. Creo que veo un if dentro de un Switch case.
