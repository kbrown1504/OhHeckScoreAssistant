//
//  PlayersViewController.swift
//  Oh Heck Score Assistant
//
//  Created by Keegan Brown on 5/17/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class PlayersViewController: UIViewController {
    
    var playerNamesArray : [String] = []
    var playerCount = 0
    
    @IBOutlet weak var playerNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextPlayerPressed(_ sender: Any) {
        
        //should add a cap at 6 players and an alert if only one player is entered and they try to start a game.
        
        let playerName = playerNameTextField.text
        
        if playerName != "" && playerCount < 6{
            playerNamesArray.append(playerName!)
            playerNameTextField.text = ""
            playerCount += 1
        } else if playerCount < 6{
            let nameAlertController = UIAlertController(title: "Invalid Entry", message: "Please enter a valid name.", preferredStyle: .alert)
            let nameAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            nameAlertController.addAction(nameAlertAction)
            self.present(nameAlertController, animated: true)
        } else {
            playerNameTextField.text = ""
            let tooManyPlayersAlertController = UIAlertController(title: "Max Player Count Reached!", message: "There is a maximum of 6 players in an Oh Heck game. Please click \"StartGame.\"", preferredStyle: .alert)
            let tooManyPlayersAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            tooManyPlayersAlertController.addAction(tooManyPlayersAlertAction)
            self.present(tooManyPlayersAlertController, animated: true)
        }
        
    }
    
    @IBAction func onStartGamePressed(_ sender: Any) {
        
        for item in playerNamesArray{
            print(item)
        }
        
        if playerNamesArray.count >= 2{
            //perform segue to (first trick bids or a view that displays the scoring window) ID: toScoreDisplay
            performSegue(withIdentifier: "toScoreDisplay", sender: nil)
        } else {
           let notEnoughPlayersAlertController = UIAlertController(title: "Not Enough Players!", message: "You must have at least two players before a game can begin.", preferredStyle: .alert)
            let notEnoughPlayersAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            notEnoughPlayersAlertController.addAction(notEnoughPlayersAlertAction)
            self.present(notEnoughPlayersAlertController, animated: true)
        }
        
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        let scoreSheetVC = segue.destination as! ScoreSheetViewController
        scoreSheetVC.playerNamesArray = playerNamesArray
        
     }
    
    
}
