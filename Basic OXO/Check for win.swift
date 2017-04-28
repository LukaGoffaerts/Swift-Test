//
//  Check for win.swift
//  Basic OXO
//
//  Created by Luka Goffaerts on 16/04/17.
//  Copyright © 2017 Luka Goffaerts. All rights reserved.
//

import Foundation

//Deze blok kijkt na of er een winnaar is of het veld vol is zonder winnaar. Ik had dit graag wat mooier geschreven, maar werkt in dit geval evengoed. 

func playerWin (_ data: [String : String]) -> Int {
    
    if (data["A"] == "O" && data["B"] == "O" && data["C"] == "O") ||
        (data["D"] == "O" && data["E"] == "O" && data["F"] == "O") ||
        (data["G"] == "O" && data["H"] == "O" && data["I"] == "O") ||
        (data["A"] == "O" && data["D"] == "O" && data["G"] == "O") ||
        (data["B"] == "O" && data["E"] == "O" && data["H"] == "O") ||
        (data["C"] == "O" && data["F"] == "O" && data["I"] == "O") ||
        (data["A"] == "O" && data["E"] == "O" && data["I"] == "O") ||
        (data["C"] == "O" && data["E"] == "O" && data["G"] == "O") {
        return 1
        
    } else if (data["A"] == "X" && data["B"] == "X" && data["C"] == "X") ||
        (data["D"] == "X" && data["E"] == "X" && data["F"] == "X") ||
        (data["G"] == "X" && data["H"] == "X" && data["I"] == "X") ||
        (data["A"] == "X" && data["D"] == "X" && data["G"] == "X") ||
        (data["B"] == "X" && data["E"] == "X" && data["H"] == "X") ||
        (data["C"] == "X" && data["F"] == "X" && data["I"] == "X") ||
        (data["A"] == "X" && data["E"] == "X" && data["I"] == "X") ||
        (data["C"] == "X" && data["E"] == "X" && data["G"] == "X") {
        return 2
    } else if data["A"] != "A" && data["B"] != "B" && data["C"] != "C" && data["D"] != "D" && data["E"] != "E" && data["F"] != "F" && data["G"] != "G" && data["H"] != "H" && data["I"] != "I" {
        return 3
    } else {
        return 0
    }
}





