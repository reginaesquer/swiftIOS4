//
//  Datos.swift
//  Hamburguesas
//
//  Created by Vital Sistemas on 10/11/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises : [String] = ["México", "Estados Unidos", "Canadá", "Argentina", "Chile", "Uruguay", "Perú", "Alemania",
        "Francia", "Holanda", "Reino Unido", "Irlanda", "España", "Turquía", "Israel", "Emiratos Arabes", "Dinamarca",
        "Suecia", "Suiza", "Luxemburgo", "China", "Tailandia", "Indonesia", "Finlandia", "Rusia"]
    
    func obtenPais () -> String {
        let posicion = Int(arc4random())%paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesa {
    let hamburguesas : [String] = ["Hamburguesa de Carne", "Hamburguesa de Pollo", "Hamburguesa Vegetariana", "Big Mac", "Hamburguesa Panchita","Hamburgruesa","Hamburguesa don Dany", "Pepe Burger", "Double Wopper", "Double Pound Burger", "Double Cheese Bacon Burger", "Loco Burger", "Hamburguesa Mexicana", "Hamburguesa de Paella", "Nugget Burger", "Irish Burger", "Luxemburger", "Alaburger", "Wings Burger", "Compuburger", "IBurger", "Hamburguesa Ranch"]
    
    func obtenHamburguesa() -> String {
        let posicion = Int(arc4random())%hamburguesas.count
        return hamburguesas[posicion]
    }
    
}

class Color {
    var color : UIColor = UIColor(red:1/255.0, green:1/255.0, blue:1/255.0, alpha: 1)
    
    func obtenColor () -> UIColor {
        let red = CGFloat(arc4random())%255
        let green = CGFloat(arc4random())%255
        let blue = CGFloat(arc4random())%255
        
        color = UIColor(red:red/255.0, green:green/255.0, blue:blue/255.0, alpha: 1)
        
        return color
    }
}
