//
//  Board interface.swift
//  Basic OXO
//
//  Created by Luka Goffaerts on 16/04/17.
//  Copyright © 2017 Luka Goffaerts. All rights reserved.
//

import Foundation

//Deze blok gaat het bord optekenen en info halen uit de dictionary

func showBoard (_ data: [String: String]) {
    
    print(" \(data["A"]!) | \(data["B"]!) | \(data["C"]!) ")
    print(" --+---+--")
    print(" \(data["D"]!) | \(data["E"]!) | \(data["F"]!) ")
    print(" --+---+--")
    print(" \(data["G"]!) | \(data["H"]!) | \(data["I"]!) ")
    
}
