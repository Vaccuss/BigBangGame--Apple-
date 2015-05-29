//
//  DetailTableViewController.swift
//  BigBangGame
//
//  Created by Dean Ditton on 29/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import UIKit
import CoreData


class DetailTableViewController: UITableViewController, UITableViewDataSource {
    
    var people =  [NSManagedObject]()
    
    @IBOutlet weak var playerView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Leaderboard\""
        playerView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    func numberOfRowsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return people.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = playerView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        
        let person = people[indexPath.row]
        cell.textLabel?.text = person.valueForKey("name") as? String
        
        
        return cell
        
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }
    
        
    
    override func viewWillAppear(animated: Bool) {
        let appDeligate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDeligate.managedObjectContext!
        
        
        let fetchRequest = NSFetchRequest(entityName:"Player")
        
        var error: NSError?
        
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as? [Player]
        
        if let results = fetchedResults {
            people = results
            
        }else{
            println("could not fetch results")
        }
    
}
}