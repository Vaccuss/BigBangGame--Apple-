//
//  BigBangGame.swift
//  BigBangGame
//
//  Created by Dean Ditton on 29/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import Foundation
import CoreData

class Player: NSManagedObject {

    @NSManaged var losses: NSNumber
    @NSManaged var name: String
    @NSManaged var total: NSNumber
    @NSManaged var wins: NSNumber
    @NSManaged var ratio: NSNumber

}
