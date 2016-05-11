//
//  Masa.swift
//  PizzApp Watch
//
//  Created by Oscar Ortega on 11/05/16.
//  Copyright © 2016 Ozzcorp. All rights reserved.
//

import WatchKit
import Foundation


class Masa: WKInterfaceController {

    var tempPizza = InfoPizza ()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let t = context as! InfoPizza
        tempPizza.tamaño = t.tamaño
        
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
    
    @IBAction func bDelgada() {
        tempPizza.masa = "Delgada"
        //pushControllerWithName("pushMasa", context: pizza)

    }
    
    @IBAction func bCrujiente() {
        tempPizza.masa = "Crujiente"
    }
    
    @IBAction func bGruesa() {
        tempPizza.masa = "Gruesa"
    }

}

/*
 let valorContexto = Valor (d: "Peso Normal", v: resultado)
 
 let c = context as! Valor //sin esto no deja sacar el contenido del objeto que se puso en el contexto
 etiquetaResultado.setText(String(c.valorIMC))
 */