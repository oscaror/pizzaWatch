//
//  Confirmar.swift
//  PizzApp Watch
//
//  Created by Oscar Ortega on 12/05/16.
//  Copyright © 2016 Ozzcorp. All rights reserved.
//

import WatchKit
import Foundation


class Confirmar: WKInterfaceController {
    
    var tempPizza = InfoPizza()
    
    @IBOutlet var tamaño: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ing1: WKInterfaceLabel!
    @IBOutlet var ing2: WKInterfaceLabel!
    @IBOutlet var ing3: WKInterfaceLabel!
    @IBOutlet var ing4: WKInterfaceLabel!
    @IBOutlet var ing5: WKInterfaceLabel!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let t = context as! InfoPizza
        tempPizza.tamaño = t.tamaño
        tempPizza.masa = t.masa
        tempPizza.queso = t.queso
        tempPizza.ingredientes = t.ingredientes
        
        print(tempPizza.ingredientes)
        
        self.tamaño.setText(tempPizza.tamaño)
        self.masa.setText(tempPizza.masa)
        self.queso.setText(tempPizza.queso)
        self.ing1.setText(tempPizza.ingredientes[0])
        self.ing2.setText(tempPizza.ingredientes[1])
        self.ing3.setText(tempPizza.ingredientes[2])
        self.ing4.setText(tempPizza.ingredientes[3])
        self.ing5.setText(tempPizza.ingredientes[4])

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

    @IBAction func bConfirmar() {
        pushControllerWithName("pushFinal", context: nil)
    }
}
