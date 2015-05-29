//
//  LeaderboardViewController.swift
//  BigBangGame
//
//  Created by Dean Ditton on 26/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import UIKit
import CoreData

class LeaderboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var leaderboardView: UITableView!
    
    var players = ["hello", "ye", "bob"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Leaderboard\""
        leaderboardView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = leaderboardView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        let player = players[indexPath.row]
        
        cell.textLabel!.text = player.valueForKey("name") as? String
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}
