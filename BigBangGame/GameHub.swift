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
        internal static var win  = 0
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
        
        internal static var RESULT = NO_SELECTION
        internal static var statergy = 0
        internal static var userChoice = NO_SELECTION
        internal static var AIChoice = NO_SELECTION
       
    }
    
    class var sharedInstance: GameHub {
        struct Static {
            static let instance: GameHub = GameHub()
        }
        return Static.instance
    }
    
    override init(){
        
    }
    
    internal func setUserChoice(NewUserChoice: Int){
        Constants.userChoice = NewUserChoice
        switch (NewUserChoice){
        case 1:
            Constants.statergy = Constants.ROCK
            break
        case 2:
            Constants.statergy = Constants.PAPER
            break
        case 3:
            Constants.statergy = Constants.SICSSOR
            break
        case 4:
            Constants.statergy = Constants.LIZARD
            break
        case 5:
            Constants.statergy = Constants.SPOCK
            break
         default:
            Constants.statergy = Constants.NO_SELECTION
        }
    }
    
    internal func compares(){
        var guess = AiGuess()
        switch (Constants.userChoice){
        case Constants.ROCK:
            Constants.RESULT = RockComparisonStrategy().compare(guess)
            break
        case Constants.PAPER:
            Constants.RESULT = PaperComparisonStrategy().compare(guess)
            break
        case Constants.SICSSOR:
            Constants.RESULT = SicssorsComparisonStrategy().compare(guess)
            break
        case Constants.LIZARD:
            Constants.RESULT = LizardComparisonStrategy().compare(guess)
            break
        case Constants.SPOCK:
            Constants.RESULT = SpockComparisonStrategy().compare(guess)
            break
         default:
            break
        }
    }
    
    internal func AiGuess() -> Int{
        var temp = Int(arc4random_uniform(5))
        var AiRandom = temp
        var Choice = Constants.NO_SELECTION
        
        switch (AiRandom){
        case 0:
            Choice = Constants.ROCK
            
        case 1:
            Choice = Constants.PAPER
            
        case 2:
            Choice = Constants.SICSSOR
            
        case 3:
            Choice = Constants.LIZARD
            
        case 4:
            Choice = Constants.SPOCK
           
        default:
            break
        }
        return Choice
    }
    
    
    
    
    
    
    
    
    
    
    
}
