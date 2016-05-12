//
//  Queso.swift
//  PizzApp Watch
//
//  Created by Oscar Ortega on 11/05/16.
//  Copyright © 2016 Ozzcorp. All rights reserved.
//

import WatchKit
import Foundation


class Queso: WKInterfaceController {
    
    var tempPizza = InfoPizza ()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let t = context as! InfoPizza
        tempPizza.tamaño = t.tamaño
        tempPizza.masa = t.masa
        
        print (tempPizza.tamaño, tempPizza.masa)
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
    
    @IBAction func bMozzarella() {
        tempPizza.queso = "Mozzarella"
        pushControllerWithName("pushIngredientes", context: tempPizza)

    }
    
    @IBAction func bCheddar() {
        tempPizza.queso = "Cheddar"
        pushControllerWithName("pushIngredientes", context: tempPizza)
    }
    
    @IBAction func bParmesano() {
        tempPizza.queso = "Parmesano"
        pushControllerWithName("pushIngredientes", context: tempPizza)
    }

    @IBAction func bSinQueso() {
        tempPizza.queso = "Sin Queso"
        pushControllerWithName("pushIngredientes", context: tempPizza)
    }
}
