//
//  BidsViewController.swift
//  Oh Heck Score Assistant
//
//  Created by Keegan Brown on 5/18/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class BidsViewController: UIViewController {
    
    var mod = 0
    var playerNamesArray : [String] = []
    var bidsArray : [Int] = []
    var playerCount = 0
    var currentPlayer = 0
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var bidTextField: UITextField!
    @IBOutlet weak var dealerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerCount = playerNamesArray.count
        playerNameLabel.text = playerNamesArray[(currentPlayer+mod)%playerCount]
        dealerLabel.text = "The dealer is \(playerNamesArray[((playerCount-1)+mod)%playerCount])."
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        let tricksVC = segue.destination as! TricksWonViewController
        tricksVC.playerNamesArray = playerNamesArray
        tricksVC.bidsArray = bidsArray
        tricksVC.mod = mod
        
     }
 
    @IBAction func onSubmitButtonPressed(_ sender: UIButton) {
        
        print("currentPlayer is \(currentPlayer)")
        print("playerCount is \(playerCount)")
        
        if currentPlayer < playerCount-1 && bidTextField.text != ""{
            
            currentPlayer += 1
            
            playerNameLabel.text = playerNamesArray[(currentPlayer+mod)%playerCount]
            bidsArray.append(Int(bidTextField.text!)!)
            bidTextField.text = ""
            
        } else {
            
            bidsArray.append(Int(bidTextField.text!)!)
            performSegue(withIdentifier: "toTricksWonSegue", sender: nil)
            
        }
        
    }
    
}
