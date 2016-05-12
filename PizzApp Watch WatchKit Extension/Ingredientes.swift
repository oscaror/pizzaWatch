//
//  Ingredientes.swift
//  PizzApp Watch
//
//  Created by Oscar Ortega on 11/05/16.
//  Copyright © 2016 Ozzcorp. All rights reserved.
//

import WatchKit
import Foundation


class Ingredientes: WKInterfaceController {
    
    var tempPizza = InfoPizza()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let t = context as! InfoPizza
        tempPizza.tamaño = t.tamaño
        tempPizza.masa = t.masa
        tempPizza.queso = t.queso
        
        print (tempPizza.tamaño, tempPizza.masa, tempPizza.queso)
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

}
