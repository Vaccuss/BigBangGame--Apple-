//
//  ViewController.swift
//  BigBangGame
//
//  Created by Dean Ditton on 26/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var playerText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toSinglePlayer(sender: UIButton) {
        //Go to sigle player
        
    
        
    }

    
    //may not use storing code
    @IBAction func savePlayerToCoreData(sender: UITextField) {
        let appDeligate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDeligate.managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Player", inManagedObjectContext: managedContext!)
        
        let player = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        
        var name = playerText.text
        GameHub.Constants.playerName = playerText.text
        
        player.setValue(name, forKey: "name")
        
        

        
    }
    
    @IBAction func toLeaderboard(sender: UIButton) {
        //to leaderboard
    }
}

