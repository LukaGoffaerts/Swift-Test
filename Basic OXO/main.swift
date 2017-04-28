//
//  main.swift
//  Basic OXO
//
//  Created by Luka Goffaerts on 16/04/17.
//  Copyright © 2017 Luka Goffaerts. All rights reserved.
//

import Foundation


var boardData: [String: String] = ["A": "A" , "B": "B", "C": "C", "D": "D", "E": "E", "F": "F", "G": "G", "H": "H", "I": "I"]
//Werken met een dictionary, zo kunnen de posities die ingevuld worden met X en O onthouden blijven

var playerChoice = 1



while (playerWin(boardData) == 0) {                         //Zolang een geen conclusie op het bord is (winst of bord vol)              moet het spel blijven lopen.
    
    print("")
    showBoard(boardData)                                    //Altijd eerst het bord tonen voor een keuze gemaakt wordt
    print("")
    

    if playerChoice == 1 {                                  //Deze sectie leest een locatie in door de speler gegeven en kijkt na of dit een correct gegeven is (is mogelijk en is nog niet ingevuld)
        
        print("Player 1 (O): Choose a location")
        
        var location: String = readLine()!
        
        while writeBoard("\(location)", "O") == false {
            print("Wrong entry! Try again: ")
            location = readLine()!                              //Hier geeft hij een fout als je 2 keer op rij iets fout invult!! geen idee waarom en de debug console is niet heel handig om te gebruikt (thread 1 breakpoint 1.1??). Wordt dit in de les nog bekeken?
        }
       
        
    } else if playerChoice == 2 {
        
        /*print("Player 2 (X): Choose a location")
        var location = readLine()!
        while writeBoard("\(location)", "X") == false {
            print("Wrong entry! Try again: ")
            location = readLine()!
        } */
    
        
        print("Mr. Computer's turn (X)")            //Een 'domme' AI gemaakt die random iets invult via een RNG. Geen logica ingestoken momenteel. Optie voor 2 spelers staat hierboven ook als optie.Een keuzemenu had mogelijk geweest (met 2 of vs computer)
        
        var location: String = ""
        
        while writeBoard("\(location)", "X") == false {
            var temp = Int(arc4random_uniform(9) + 1)
            
            switch temp {
            case 1:
                location = "A"
            case 2:
                location = "B"
            case 3:
                location = "C"
            case 4:
                location = "D"
            case 5:
                location = "E"
            case 6:
                location = "F"
            case 7:
                location = "G"
            case 8:
                location = "H"
            case 9:
                location = "I"
            default:
                break
            }
            
            
        }
        
        print("Computer chose \(location)")
        
     
        
    }
    
    if playerChoice == 1 {              //op het einde van de while lus switchen van speler. Dit kon niet in de if lus.
        playerChoice = 2
    } else {
        playerChoice = 1
    }
    
}

showBoard(boardData)                    //Als het spel gedaan is (uit de while lus gegaan) wordt het bord nog 1 keer getoond met de bijhorende tekst.

switch playerWin(boardData) {
case 1, 2:
    print("Player \(playerWin(boardData)) wins!")
case 3:
    print("Board full, no winner")
default:
    break
}






