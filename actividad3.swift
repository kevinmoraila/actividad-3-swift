import Foundation

// Función para calcular el área del cuadrado
func calcularAreaCuadrado(lado: Double) -> Double {
    return lado * lado
}

// Función para calcular el área del rectángulo
func calcularAreaRectangulo(base: Double, altura: Double) -> Double {
    return base * altura
}

// Función para calcular el área del triángulo
func calcularAreaTriangulo(base: Double, altura: Double) -> Double {
    return (base * altura) / 2.0
}

// Función para calcular el área del círculo
func calcularAreaCirculo(radio: Double) -> Double {
    return Double.pi * radio * radio
}

// Función principal
func main() {
    var opcion = 0
    
    while opcion != 5 {
        print("\nMenú:")
        print("1. Calcular área del cuadrado")
        print("2. Calcular área del rectángulo")
        print("3. Calcular área del triángulo")
        print("4. Calcular área del círculo")
        print("5. Salir")
        print("Ingrese la opción deseada:")
        
        if let opcionString = readLine(), let opcionInt = Int(opcionString) {
            opcion = opcionInt
            
            switch opcion {
            case 1:
                print("Ingrese el lado del cuadrado:")
                if let ladoString = readLine(), let lado = Double(ladoString) {
                    let area = calcularAreaCuadrado(lado: lado)
                    print("El área del cuadrado es: \(area)")
                } else {
                    print("Entrada inválida. Debe ingresar un número.")
                }
            case 2:
                print("Ingrese la base del rectángulo:")
                if let baseString = readLine(), let base = Double(baseString) {
                    print("Ingrese la altura del rectángulo:")
                    if let alturaString = readLine(), let altura = Double(alturaString) {
                        let area = calcularAreaRectangulo(base: base, altura: altura)
                        print("El área del rectángulo es: \(area)")
                    } else {
                        print("Entrada inválida. Debe ingresar un número.")
                    }
                } else {
                    print("Entrada inválida. Debe ingresar un número.")
                }
            case 3:
                print("Ingrese la base del triángulo:")
                if let baseString = readLine(), let base = Double(baseString) {
                    print("Ingrese la altura del triángulo:")
                    if let alturaString = readLine(), let altura = Double(alturaString) {
                        let area = calcularAreaTriangulo(base: base, altura: altura)
                        print("El área del triángulo es: \(area)")
                    } else {
                        print("Entrada inválida. Debe ingresar un número.")
                    }
                } else {
                    print("Entrada inválida. Debe ingresar un número.")
                }
            case 4:
                print("Ingrese el radio del círculo:")
                if let radioString = readLine(), let radio = Double(radioString) {
                    let area = calcularAreaCirculo(radio: radio)
                    print("El área del círculo es: \(area)")
                } else {
                    print("Entrada inválida. Debe ingresar un número.")
                }
            case 5:
                print("Saliendo del programa.")
            default:
                print("Opción inválida. Por favor, ingrese una opción válida.")
            }
        } else {
            print("Opción inválida. Por favor, ingrese una opción válida.")
        }
    }
}

// Llamamos a la función main para iniciar el programa
main()
