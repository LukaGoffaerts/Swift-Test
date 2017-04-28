//
//  Write board.swift
//  Basic OXO
//
//  Created by Luka Goffaerts on 16/04/17.
//  Copyright © 2017 Luka Goffaerts. All rights reserved.
//

import Foundation

//Deze blok gaat nakijken of de ingevulde info correct is (veld is niet reeds ingenomen en ingevulde gegeven is logisch) en gaat deze locatie in de dictionary dan ook invullen.

func writeBoard(_ loc: String, _ data: String) -> Bool {

    if boardData["\(loc)"] != "O" && boardData["\(loc)"] != "X" && (loc == "A" || loc == "B" || loc == "C" || loc == "D" || loc == "E" || loc == "F" || loc == "G" || loc == "H" || loc == "I"){
        boardData["\(loc)"] = "\(data)"
        
        return true
    } else {
        return false
    }
    
}
