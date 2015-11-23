//: Tarea Módulo 2
/*
*   Las instrucciones no están claras, por lo que se asume que de velocidad Alta, debe pasar a velocidad Media
*/

import UIKit

//Enumeracion Velocidades
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

//Clase Auto
class Auto {
    var velocidad : Velocidades
    
    init () {
        self.velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
        
    }
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String) {
        
        switch velocidad.rawValue {
        case Velocidades.Apagado.rawValue:
            self.velocidad = .VelocidadBaja
            return (Velocidades.Apagado.rawValue, "Apagado")
        case Velocidades.VelocidadBaja.rawValue:
            self.velocidad = .VelocidadMedia
            return (Velocidades.VelocidadBaja.rawValue, "Velocidad Baja")
        case Velocidades.VelocidadMedia.rawValue:
            self.velocidad = .VelocidadAlta
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad Media")
        case Velocidades.VelocidadAlta.rawValue:
            self.velocidad = .VelocidadMedia
            return (Velocidades.VelocidadAlta.rawValue, "Velocidad Alta")
        default:
            return (velocidad.rawValue, "Velocidad Errónea")
        }
        
    }
}

//iteraciones
var auto : Auto = Auto ()
for var i = 0; i<20; i++ {
    var res = auto.cambioDeVelocidad()
    print ("\(res.actual), \(res.velocidadEnCadena)")
}



