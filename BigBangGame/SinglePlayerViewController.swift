//
//  SinglePlayerViewController.swift
//  BigBangGame
//
//  Created by Dean Ditton on 26/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import UIKit
import CoreData


class SinglePlayerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as AppDelegate).managedObjectContext
    
    
    @IBOutlet weak var TilePage: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    var pickArray: [String] = ["Rock", "Paper", "Sizzors", "Lizard", "Spock"]
    
    var playerName = GameHub.Constants.playerName
   
    
    var alertView = UIAlertView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TilePage.text = playerName + " get ready to battle"
        picker.delegate = self
        picker.dataSource = self
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberofnumberOfComponentsInPickerView componant: Int) -> Int {
        return pickArray.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent componant: Int) -> String{
        return pickArray[row] as NSString
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickArray.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickArray[row]
    }
    
    @IBAction func playButton(sender: UIButton) {
       var pick = picker.selectedRowInComponent(0)
        GameHub.Constants.userChoice = pick
        GameHub().compares()
        switch (GameHub.Constants.RESULT){
            case GameHub.Constants.WIN:
                print("win")
                GameHub.Constants.win = GameHub.Constants.win + 1
                alertView.title = "Winner"
                alertView.message = "There will be steak for tea!"
                alertView.addButtonWithTitle("Next!")
                alertView.show();
            
            
            case GameHub.Constants.LOSS:
                print("loss")
                GameHub.Constants.loss = GameHub.Constants.loss + 1
                alertView.title = "Looser"
                alertView.message = "No fruit for YOU!!!"
                alertView.addButtonWithTitle("Next!")
                alertView.show();
            
            
            case GameHub.Constants.TIE:
                GameHub.Constants.tie = GameHub.Constants.tie + 1
                alertView.title = "Tie"
                alertView.message = "Meh whatever man"
                alertView.addButtonWithTitle("Next!")
                alertView.show();
            
            default:
                break
        }
        
    }
    
    @IBAction func BackButton(sender: AnyObject) {
        let player = NSEntityDescription.insertNewObjectForEntityForName("Player", inManagedObjectContext: self.managedObjectContext!) as Player;
        
        var total = GameHub.Constants.loss + GameHub.Constants.win
        var win = GameHub.Constants.win
        var result: Float = Float(win) / Float(total)
        player.name = GameHub.Constants.playerName
        player.wins = GameHub.Constants.win
        player.losses = GameHub.Constants.loss
        player.total = total
        if GameHub.Constants.win > 0{
            player.ratio = result
        }else{
            player.ratio = 0.0
        }
        GameHub.Constants.loss = 0
        GameHub.Constants.tie = 0
        GameHub.Constants.win = 0
       
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
