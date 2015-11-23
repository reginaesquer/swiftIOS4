//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Vital Sistemas on 10/11/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hamburguesa: UILabel!
    @IBOutlet weak var pais: UILabel!
    var fondo = Color ()
    var hamburguesas = ColeccionDeHamburguesa ()
    var paises = ColeccionDePaises ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func quieroHamburguesa(sender: AnyObject) {
        let color = fondo.obtenColor()
        view.backgroundColor = color
        view.tintColor = color
        
        hamburguesa.text = hamburguesas.obtenHamburguesa()
        pais.text = paises.obtenPais()
        
        
    }
}

