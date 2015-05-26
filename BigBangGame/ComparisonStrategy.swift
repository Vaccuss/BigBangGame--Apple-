//
//  ComparisonStrategy.swift
//  BigBangGame
//
//  Created by Dean Ditton on 26/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import Foundation

protocol ComparisonStrategy {
    func compare(otPlayer: Int)->Int
    
}

class RockComparisonStrategy: ComparisonStrategy {
  
    func compare(otPlayer: Int) -> Int {
        switch (otPlayer) {
        case GameHub.Constants.ROCK:
            return GameHub.Constants.TIE
            
        case GameHub.Constants.SICSSOR:
            return GameHub.Constants.WIN
            
        case GameHub.Constants.LIZARD:
            return GameHub.Constants.WIN
            
        default:
            return GameHub.Constants.LOSS;

        }
    }
}

class PaperComparisonStrategy: ComparisonStrategy {
    
    func compare(otPlayer: Int) -> Int {
        switch (otPlayer) {
        case GameHub.Constants.PAPER:
            return GameHub.Constants.TIE
            
        case GameHub.Constants.ROCK:
            return GameHub.Constants.WIN
            
        case GameHub.Constants.SPOCK:
            return GameHub.Constants.WIN
            
        default:
            return GameHub.Constants.LOSS;
            
        }
    }
}

class SicssorsComparisonStrategy: ComparisonStrategy {
    
    func compare(otPlayer: Int) -> Int {
        switch (otPlayer) {
        case GameHub.Constants.SICSSOR:
            return GameHub.Constants.TIE
            
        case GameHub.Constants.PAPER:
            return GameHub.Constants.WIN
            
        case GameHub.Constants.LIZARD:
            return GameHub.Constants.WIN
            
        default:
            return GameHub.Constants.LOSS;
            
        }
    }
}

class LizardComparisonStrategy: ComparisonStrategy {
    
    func compare(otPlayer: Int) -> Int {
        switch (otPlayer) {
        case GameHub.Constants.LIZARD:
            return GameHub.Constants.TIE
            
        case GameHub.Constants.SPOCK:
            return GameHub.Constants.WIN
            
        case GameHub.Constants.PAPER:
            return GameHub.Constants.WIN
            
        default:
            return GameHub.Constants.LOSS;
            
        }
    }
}

class SpockComparisonStrategy: ComparisonStrategy {
    
    func compare(otPlayer: Int) -> Int {
        switch (otPlayer) {
        case GameHub.Constants.SPOCK:
            return GameHub.Constants.TIE
            
        case GameHub.Constants.SICSSOR:
            return GameHub.Constants.WIN
            
        case GameHub.Constants.ROCK:
            return GameHub.Constants.WIN
            
        default:
            return GameHub.Constants.LOSS;
            
        }
    }
}
