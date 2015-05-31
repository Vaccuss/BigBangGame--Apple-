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
    @IBOutlet weak var buttonName: UIButton!
    
    @IBOutlet weak var welcometext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       var name = GameHub.Constants.playerName
        welcometext.text = "You ready " + name + "?"
        playerText.text = name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toSinglePlayer(sender: UIButton) {
        //Go to sigle player and set suff up
        SetPlayerName(UIButton)
        buttonName.setTitle("Change name", forState: UIControlState.Normal)
    }
    @IBAction func SetPlayerName(sender: AnyObject) {
        var name = playerText.text
        GameHub.Constants.playerName = playerText.text
        welcometext.text = "You ready " + name + "?"
        buttonName.setTitle("Change name", forState: UIControlState.Normal)
    
    }

    
    //may not use storing code
    @IBAction func savePlayerToCoreData(sender: UITextField) {
            }
    
    @IBAction func toLeaderboard(sender: UIButton) {
        //to leaderboard
    }
}

