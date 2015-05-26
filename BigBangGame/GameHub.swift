//
//  GameHub.swift
//  BigBangGame
//
//  Created by Dean Ditton on 26/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import Cocoa

class GameHub: NSObject {
    
    static let sharedInstance = GameHub()
    
    
    init(){
        static var playerName: String
        var win: Int
        var loss: Int
        var tie: Int
        
        let NO_SELECTION = 0
        let ROCK = 1
        let PAPER = 2
        let SICSSOR = 3
        let LIZARD = 4
        let SPOCK = 5
        
        let TIE = 0
        let WIN = 1
        let LOSS = 2
        
        let LOWESTNUM = 1
        let HIGHESTNUM = 5
        
        var statergy: ComparisonStrategy
        
        var userChoice = NO_SELECTION
    }
    
    
}
