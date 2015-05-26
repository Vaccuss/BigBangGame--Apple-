//
//  GameHub.swift
//  BigBangGame
//
//  Created by Dean Ditton on 26/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import UIKit

class GameHub: NSObject {
    
    struct Constants{
        internal static var playerName = ""
      internal var win  = 0
        internal static var loss = 0
        internal static var tie = 0
        
        static let NO_SELECTION = 0
        static let ROCK = 1
        static let PAPER = 2
        static let SICSSOR = 3
        static let LIZARD = 4
        static let SPOCK = 5
        
        static let TIE = 0
        static let WIN = 1
        static let LOSS = 2
        
        static let LOWESTNUM = 1
        static let HIGHESTNUM = 5
        
        internal static var statergy =  RockComparisonStrategy()
        internal static var userChoice = NO_SELECTION
       
    }
    
    class var sharedInstance: GameHub {
        struct Static {
            static let instance: GameHub = GameHub()
        }
        return Static.instance
    }
    
    //class let sharedInstance = GameHub()

    override init(){
        
    }
    
    
}
