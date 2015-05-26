//
//  SinglePlayerViewController.swift
//  BigBangGame
//
//  Created by Dean Ditton on 26/05/2015.
//  Copyright (c) 2015 Dean Ditton. All rights reserved.
//

import UIKit

class SinglePlayerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var picker: UIPickerView!
    var pickArray: [String] = ["Rock", "Paper", "Sizzors", "Lizard", "Spock"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        
    }
    
}
