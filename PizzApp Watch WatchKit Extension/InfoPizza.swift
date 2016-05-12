//
//  InfoPizza.swift
//  PizzApp Watch
//
//  Created by Oscar Ortega on 11/05/16.
//  Copyright © 2016 Ozzcorp. All rights reserved.
//

import WatchKit

class InfoPizza: NSObject {
    
    var tamaño : String
    var masa : String
    var queso : String
    var ingredientes : [String] 
   
    
    override init() {
        tamaño = ""
        masa = ""
        queso = ""
        ingredientes = [ "","","","",""]
        
        
    }
    
    /*init (ta : String, ma : String, que : String, ing1 : String, ing2 : String, ing3 : String, ing4 : String, ing5 : String){
        tamaño = ta
        masa = ma
        queso = que
        ingrediente1 = ing1
        ingrediente2 = ing2
        ingrediente3 = ing3
        ingrediente4 = ing4
        ingrediente5 = ing5
    } */

}
