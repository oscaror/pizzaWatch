//
//  Tamaño.swift
//  PizzApp Watch
//
//  Created by Oscar Ortega on 11/05/16.
//  Copyright © 2016 Ozzcorp. All rights reserved.
//

import WatchKit
import Foundation


class Tamaño: WKInterfaceController {
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
       
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func bChica() {
        let pizza = InfoPizza ()
        pizza.tamaño = "Chica"
        pushControllerWithName("pushMasa", context: pizza)
        
    }
    
    @IBAction func bMediana() {
        let pizza = InfoPizza ()
        pizza.tamaño = "Mediana"
        pushControllerWithName("pushMasa", context: pizza)
    }
    
    @IBAction func bGrande() {
        let pizza = InfoPizza ()
        pizza.tamaño = "Grande"
        pushControllerWithName("pushMasa", context: pizza)
    
    }
    
}

/*
 let valorContexto = Valor (d: "Peso Normal", v: resultado)
 
 let c = context as! Valor //sin esto no deja sacar el contenido del objeto que se puso en el contexto
 etiquetaResultado.setText(String(c.valorIMC))
 */