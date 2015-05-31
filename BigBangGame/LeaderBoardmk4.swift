//
//  LeaderBoardmk4.swift
//  BigBangGame
//
//  Created by Dean Ditton on 31/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import UIKit
import CoreData

class LeaderBoardmk4: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    let cellID = "cell"
    let sortedPlayers = [String: [String: Any]]()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate  = self
        tableView.dataSource = self
       
        
        // Do any additional setup after loading the view.
    }
    
    
    func getAndSortPlayers()-> AnyObject{
        let appDeligate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDeligate.managedObjectContext!
        let fetchRequest = NSFetchRequest(entityName:"Player")
        
        fetchRequest.returnsObjectsAsFaults = false
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "ratio", ascending: false)]
        
        var results = managedContext.executeFetchRequest(fetchRequest, error: nil) as [Player]
        
        return results

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var array = getAndSortPlayers() as [Player]
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as UITableViewCell
        let row = indexPath.row
        var rank = row + 1 as NSNumber
    
        var array = getAndSortPlayers() as [Player]
        var player = array[row]
        var name = player.name
        var win = player.wins
        var losses = player.losses
        var total = player.total
        cell.sizeToFit()
        cell.textLabel?.text = "Rank: " + rank.stringValue + " " + name + " | " + " Wins: " + win.stringValue + " Losses: " + losses.stringValue + " Total:  " + total.stringValue
        cell.textLabel?.sizeToFit()
        
        return cell

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
