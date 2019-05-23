//
//  TricksWonViewController.swift
//  Oh Heck Score Assistant
//
//  Created by Keegan Brown on 5/18/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class TricksWonViewController: UIViewController {
    
    var mod = 0
    var playerNamesArray : [String] = []
    var bidsArray : [Int] = []
    var tricksArray : [Int] = []
    var playerCount = 0
    var currentPlayer = 0
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var tricksWonTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerCount = playerNamesArray.count
        
        playerNameLabel.text = playerNamesArray[(currentPlayer+mod)%playerCount]
        
        
    }
    
    
    @IBAction func onSubmitPressed(_ sender: UIButton) {
        
        if currentPlayer < playerCount-1 && tricksWonTextField.text != "" {
            
            currentPlayer += 1
            
            //for some reason this is unwrapping as nil and crashing the program.
            let toAdd = Int(tricksWonTextField.text!)!
            
            playerNameLabel.text = playerNamesArray[(currentPlayer+mod)%playerCount]
            tricksArray.append(toAdd)
            tricksWonTextField.text = ""
            
        } else{
            
            tricksArray.append(Int(tricksWonTextField.text!)!)
            print ("DONE")
            performSegue(withIdentifier: "unwindToScoreSheetSegue", sender: nil)
            
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let scoreSheetVC = segue.destination as! ScoreSheetViewController
        scoreSheetVC.playerBidsArray = bidsArray
        scoreSheetVC.playerTricksWonArray = tricksArray
        scoreSheetVC.mod = mod
        
    }
    
    
}
