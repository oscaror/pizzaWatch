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
    var contador : Int = 0, contBoton : Int = 0

    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var peperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    
    
    @IBOutlet var continuar: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let t = context as! InfoPizza
        tempPizza.tamaño = t.tamaño
        tempPizza.masa = t.masa
        tempPizza.queso = t.queso
        
        
        
        print (tempPizza.tamaño, tempPizza.masa, tempPizza.queso)
        
        self.continuar.setEnabled(false)
        
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
    
    func disable (){
        if (contador == 5){
            self.jamon.setEnabled(false)
            self.peperoni.setEnabled(false)
            self.pavo.setEnabled(false)
            self.salchicha.setEnabled(false)
            self.aceituna.setEnabled(false)
            self.cebolla.setEnabled(false)
            self.pimiento.setEnabled(false)
            self.piña.setEnabled(false)
            self.anchoa.setEnabled(false)
            print ("hola contador")
        }

    }
    
    func enableContinuar (){
        if (contBoton != 0){
            self.continuar.setEnabled(true)
        }else {
            self.continuar.setEnabled(false)
        }
    }

    @IBAction func bContinuar() {
        print (tempPizza.ingredientes)
        pushControllerWithName("pushConfirmar", context: tempPizza)
    }

    
    @IBAction func ingJamon(value: Bool) {
        
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Jamón"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    enableContinuar()
                    disable()
                    
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Jamón")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()
            print ("else", contador)
        }
        
    }
    
    @IBAction func ingPeperoni(value: Bool) {
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Peperoni"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    enableContinuar()
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    disable()
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Peperoni")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()

            print ("else", contador)
        }

    }
    
    @IBAction func ingPavo(value: Bool) {
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Pavo"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    enableContinuar()
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    disable()
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Pavo")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()

            print ("else", contador)
        }
        
    }

    
    @IBAction func ingSalchicha(value: Bool) {
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Salchicha"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    enableContinuar()
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    disable()
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Salchicha")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()

            print ("else", contador)
        }
        
    }

    
    @IBAction func ingAceituna(value: Bool) {
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Aceituna"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    enableContinuar()
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    disable()
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Aceituna")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()

            print ("else", contador)
        }
        
    }

    
    @IBAction func ingCebolla(value: Bool) {
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Cebolla"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    enableContinuar()
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    disable()
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Cebolla")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()

            print ("else", contador)
        }
        
    }

    
    @IBAction func ingPimiento(value: Bool) {
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Pimiento"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    enableContinuar()
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    disable()
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Pimiento")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()

            print ("else", contador)
        }
        
    }
    
    @IBAction func ingPiña(value: Bool) {
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Piña"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    enableContinuar()
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    disable()
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Piña")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()

            print ("else", contador)
        }
        
    }

    
    @IBAction func ingAnchoa(value: Bool) {
        if (value) {
            var i : Int = 0, ban : Bool = true
            while ban {
                if tempPizza.ingredientes[i] == "" {
                    tempPizza.ingredientes[i] = "Anchoas"
                    contador = contador + 1
                    contBoton = contBoton + 1
                    enableContinuar()
                    print(tempPizza.ingredientes[i])
                    print (contador)
                    disable()
                    ban = false
                }else{
                    i += 1
                }
            }
            
            
        }else {
            let i = tempPizza.ingredientes.indexOf("Anchoas")
            tempPizza.ingredientes.insert("", atIndex: i!)
            tempPizza.ingredientes.removeAtIndex(i!+1)
            contador = contador - 1
            contBoton = contBoton - 1
            enableContinuar()

            print ("else", contador)
        }
        
    }

    
}
