//
//  Terminar.swift
//  PizzApp Watch
//
//  Created by Oscar Ortega on 12/05/16.
//  Copyright © 2016 Ozzcorp. All rights reserved.
//

import WatchKit
import Foundation


class Terminar: WKInterfaceController {

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

    @IBAction func bTerminar() {
        Terminar.reloadRootControllersWithNames(["Inicio"], contexts: [])

    }
}
