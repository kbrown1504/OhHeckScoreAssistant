//
//  ScoreSheetViewController.swift
//  Oh Heck Score Assistant
//
//  Created by Keegan Brown on 5/17/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class ScoreSheetViewController: UIViewController {
    
    @IBOutlet weak var playerOneNameLabel: UILabel!
    @IBOutlet weak var playerTwoNameLabel: UILabel!
    @IBOutlet weak var playerThreeNameLabel: UILabel!
    @IBOutlet weak var playerFourNameLabel: UILabel!
    @IBOutlet weak var playerFiveNameLabel: UILabel!
    @IBOutlet weak var playerSixNameLabel: UILabel!
    
    @IBOutlet weak var playerThreeStack: UIStackView!
    @IBOutlet weak var playerFourStack: UIStackView!
    @IBOutlet weak var playerFiveStack: UIStackView!
    @IBOutlet weak var playerSixStack: UIStackView!
    
    @IBOutlet weak var playerOneBidTextView: UITextView!
    @IBOutlet weak var playerOneTrickTextView: UITextView!
    @IBOutlet weak var playerOneScoreTextView: UITextView!
    
    @IBOutlet weak var playerTwoBidTextView: UITextView!
    @IBOutlet weak var playerTwoTrickTextView: UITextView!
    @IBOutlet weak var playerTwoScoreTextView: UITextView!
    
    @IBOutlet weak var playerThreeBidTextView: UITextView!
    @IBOutlet weak var playerThreeTrickTextView: UITextView!
    @IBOutlet weak var playerThreeScoreTextView: UITextView!
    
    @IBOutlet weak var playerFourBidTextView: UITextView!
    @IBOutlet weak var playerFourTrickTextView: UITextView!
    @IBOutlet weak var playerFourScoreTextView: UITextView!
    
    @IBOutlet weak var playerFiveBidTextView: UITextView!
    @IBOutlet weak var playerFiveTrickTextView: UITextView!
    @IBOutlet weak var playerFiveScoreTextView: UITextView!
    
    @IBOutlet weak var playerSixBidTextView: UITextView!
    @IBOutlet weak var playerSixTrickTextView: UITextView!
    @IBOutlet weak var playerSixScoreTextView: UITextView!
    
    var mod = 0
    var playerNamesArray : [String] = []
    var playerScoresArray : [Int] = [0,0,0,0,0,0]
    var playerBidsArray : [Int] = []
    var playerTricksWonArray : [Int] = []
    
    var playerOneScoreToAdd = 0
    var playerOneScore = 0
    var playerOneBidToAdd = 0
    var playerOneTricksWon = 0
    
    var playerTwoScoreToAdd = 0
    var playerTwoScore = 0
    var playerTwoBidToAdd = 0
    var playerTwoTricksWon = 0
    
    var playerThreeScoreToAdd = 0
    var playerThreeScore = 0
    var playerThreeBidToAdd = 0
    var playerThreeTricksWon = 0
    
    var playerFourScoreToAdd = 0
    var playerFourScore = 0
    var playerFourBidToAdd = 0
    var playerFourTricksWon = 0
    
    var playerFiveScoreToAdd = 0
    var playerFiveScore = 0
    var playerFiveBidToAdd = 0
    var playerFiveTricksWon = 0
    
    var playerSixScoreToAdd = 0
    var playerSixScore = 0
    var playerSixBidToAdd = 0
    var playerSixTricksWon = 0
    
    var firstTime = true
    var currentPlayer = 0
    
    var playerCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //intial setup can go here
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //gets number of players using the array
        playerCount = playerNamesArray.count
        print ("Number of players is : \(playerCount)")
        
        if firstTime == true {
            
            firstTime = false
            print ("It's the first run on Score Sheet!")
            
            //sets up the score board based on number of players
            switch playerCount{
            case 2:
                playerOneNameLabel.text = playerNamesArray[0]
                playerTwoNameLabel.text = playerNamesArray[1]
                
                playerThreeStack.isHidden = true
                playerFourStack.isHidden = true
                playerFiveStack.isHidden = true
                playerSixStack.isHidden = true
                
            case 3:
                playerOneNameLabel.text = playerNamesArray[0]
                playerTwoNameLabel.text = playerNamesArray[1]
                playerThreeNameLabel.text = playerNamesArray[2]
                
                playerFourStack.isHidden = true
                playerFiveStack.isHidden = true
                playerSixStack.isHidden = true
                
            case 4:
                playerOneNameLabel.text = playerNamesArray[0]
                playerTwoNameLabel.text = playerNamesArray[1]
                playerThreeNameLabel.text = playerNamesArray[2]
                playerFourNameLabel.text = playerNamesArray[3]
                
                playerFiveStack.isHidden = true
                playerSixStack.isHidden = true
                
            case 5:
                playerOneNameLabel.text = playerNamesArray[0]
                playerTwoNameLabel.text = playerNamesArray[1]
                playerThreeNameLabel.text = playerNamesArray[2]
                playerFourNameLabel.text = playerNamesArray[3]
                playerFiveNameLabel.text = playerNamesArray[4]
                
                playerSixStack.isHidden = true
                
            case 6:
                playerOneNameLabel.text = playerNamesArray[0]
                playerTwoNameLabel.text = playerNamesArray[1]
                playerThreeNameLabel.text = playerNamesArray[2]
                playerFourNameLabel.text = playerNamesArray[3]
                playerFiveNameLabel.text = playerNamesArray[4]
                playerSixNameLabel.text = playerNamesArray[5]
                
                
            default:
                break
            }
            
        } else {
            
            switch playerCount{
            case 2:
                addValues(playerBid: playerOneBidToAdd, playerTricks: playerOneTricksWon, playerScoreToAdd: playerOneScoreToAdd, playerScore: playerOneScore, playerIndex: 0, playerBidTextView: playerOneBidTextView, playerTrickTextView: playerOneTrickTextView, playerScoreTextView: playerOneScoreTextView)
                print (playerBidsArray[1])
                addValues(playerBid: playerTwoBidToAdd, playerTricks: playerTwoTricksWon, playerScoreToAdd: playerTwoScoreToAdd, playerScore: playerTwoScore, playerIndex: 1, playerBidTextView: playerTwoBidTextView, playerTrickTextView: playerTwoTrickTextView, playerScoreTextView: playerTwoScoreTextView)
                
            case 3:
                addValues(playerBid: playerOneBidToAdd, playerTricks: playerOneTricksWon, playerScoreToAdd: playerOneScoreToAdd, playerScore: playerOneScore, playerIndex: 0, playerBidTextView: playerOneBidTextView, playerTrickTextView: playerOneTrickTextView, playerScoreTextView: playerOneScoreTextView)
                addValues(playerBid: playerTwoBidToAdd, playerTricks: playerTwoTricksWon, playerScoreToAdd: playerTwoScoreToAdd, playerScore: playerTwoScore, playerIndex: 1, playerBidTextView: playerTwoBidTextView, playerTrickTextView: playerTwoTrickTextView, playerScoreTextView: playerTwoScoreTextView)
                addValues(playerBid: playerThreeBidToAdd, playerTricks: playerThreeTricksWon, playerScoreToAdd: playerThreeScoreToAdd, playerScore: playerThreeScore, playerIndex: 2, playerBidTextView: playerThreeBidTextView, playerTrickTextView: playerThreeTrickTextView, playerScoreTextView: playerThreeScoreTextView)
                
            case 4:
                addValues(playerBid: playerOneBidToAdd, playerTricks: playerOneTricksWon, playerScoreToAdd: playerOneScoreToAdd, playerScore: playerOneScore, playerIndex: 0, playerBidTextView: playerOneBidTextView, playerTrickTextView: playerOneTrickTextView, playerScoreTextView: playerOneScoreTextView)
                addValues(playerBid: playerTwoBidToAdd, playerTricks: playerTwoTricksWon, playerScoreToAdd: playerTwoScoreToAdd, playerScore: playerTwoScore, playerIndex: 1, playerBidTextView: playerTwoBidTextView, playerTrickTextView: playerTwoTrickTextView, playerScoreTextView: playerTwoScoreTextView)
                addValues(playerBid: playerThreeBidToAdd, playerTricks: playerThreeTricksWon, playerScoreToAdd: playerThreeScoreToAdd, playerScore: playerThreeScore, playerIndex: 2, playerBidTextView: playerThreeBidTextView, playerTrickTextView: playerThreeTrickTextView, playerScoreTextView: playerThreeScoreTextView)
                addValues(playerBid: playerFourBidToAdd, playerTricks: playerFourTricksWon, playerScoreToAdd: playerFourScoreToAdd, playerScore: playerFourScore, playerIndex: 3, playerBidTextView: playerFourBidTextView, playerTrickTextView: playerFourTrickTextView, playerScoreTextView: playerFourScoreTextView)
                
            case 5:
                addValues(playerBid: playerOneBidToAdd, playerTricks: playerOneTricksWon, playerScoreToAdd: playerOneScoreToAdd, playerScore: playerOneScore, playerIndex: 0, playerBidTextView: playerOneBidTextView, playerTrickTextView: playerOneTrickTextView, playerScoreTextView: playerOneScoreTextView)
                addValues(playerBid: playerTwoBidToAdd, playerTricks: playerTwoTricksWon, playerScoreToAdd: playerTwoScoreToAdd, playerScore: playerTwoScore, playerIndex: 1, playerBidTextView: playerTwoBidTextView, playerTrickTextView: playerTwoTrickTextView, playerScoreTextView: playerTwoScoreTextView)
                addValues(playerBid: playerThreeBidToAdd, playerTricks: playerThreeTricksWon, playerScoreToAdd: playerThreeScoreToAdd, playerScore: playerThreeScore, playerIndex: 2, playerBidTextView: playerThreeBidTextView, playerTrickTextView: playerThreeTrickTextView, playerScoreTextView: playerThreeScoreTextView)
                addValues(playerBid: playerFourBidToAdd, playerTricks: playerFourTricksWon, playerScoreToAdd: playerFourScoreToAdd, playerScore: playerFourScore, playerIndex: 3, playerBidTextView: playerFourBidTextView, playerTrickTextView: playerFourTrickTextView, playerScoreTextView: playerFourScoreTextView)
                addValues(playerBid: playerFiveBidToAdd, playerTricks: playerFiveTricksWon, playerScoreToAdd: playerFiveScoreToAdd, playerScore: playerFiveScore, playerIndex: 4, playerBidTextView: playerFiveBidTextView, playerTrickTextView: playerFiveTrickTextView, playerScoreTextView: playerFiveScoreTextView)
                
            case 6:
                addValues(playerBid: playerOneBidToAdd, playerTricks: playerOneTricksWon, playerScoreToAdd: playerOneScoreToAdd, playerScore: playerOneScore, playerIndex: 0, playerBidTextView: playerOneBidTextView, playerTrickTextView: playerOneTrickTextView, playerScoreTextView: playerOneScoreTextView)
                addValues(playerBid: playerTwoBidToAdd, playerTricks: playerTwoTricksWon, playerScoreToAdd: playerTwoScoreToAdd, playerScore: playerTwoScore, playerIndex: 1, playerBidTextView: playerTwoBidTextView, playerTrickTextView: playerTwoTrickTextView, playerScoreTextView: playerTwoScoreTextView)
                addValues(playerBid: playerThreeBidToAdd, playerTricks: playerThreeTricksWon, playerScoreToAdd: playerThreeScoreToAdd, playerScore: playerThreeScore, playerIndex: 2, playerBidTextView: playerThreeBidTextView, playerTrickTextView: playerThreeTrickTextView, playerScoreTextView: playerThreeScoreTextView)
                addValues(playerBid: playerFourBidToAdd, playerTricks: playerFourTricksWon, playerScoreToAdd: playerFourScoreToAdd, playerScore: playerFourScore, playerIndex: 3, playerBidTextView: playerFourBidTextView, playerTrickTextView: playerFourTrickTextView, playerScoreTextView: playerFourScoreTextView)
                addValues(playerBid: playerFiveBidToAdd, playerTricks: playerFiveTricksWon, playerScoreToAdd: playerFiveScoreToAdd, playerScore: playerFiveScore, playerIndex: 4, playerBidTextView: playerFiveBidTextView, playerTrickTextView: playerFiveTrickTextView, playerScoreTextView: playerFiveScoreTextView)
                addValues(playerBid: playerSixBidToAdd, playerTricks: playerSixTricksWon, playerScoreToAdd: playerSixScoreToAdd, playerScore: playerSixScore, playerIndex: 5, playerBidTextView: playerSixBidTextView, playerTrickTextView: playerSixTrickTextView, playerScoreTextView: playerSixScoreTextView)
                
                
            default:
                break
            }
            
            mod += 1
            
        }
        
    }
    
    func addValues (playerBid: Int, playerTricks: Int, playerScoreToAdd: Int, playerScore: Int, playerIndex: Int, playerBidTextView : UITextView, playerTrickTextView : UITextView, playerScoreTextView: UITextView){
        
        var playerScoreToAdd = 0
        var playerBid : Int!
        var playerTricks : Int!
        print ("adding values")
        
        
        playerBid = playerBidsArray[(playerCount+(playerIndex - (mod%playerCount)))%playerCount]
        playerTricks = playerTricksWonArray[(playerCount+(playerIndex - (mod%playerCount)))%playerCount]
        
        
        if playerBid == playerTricks{
            playerScoreToAdd = (3+playerBid)
        } else {
            playerScoreToAdd = 0
        }
        
        var playerScore = playerScoresArray[playerIndex]
        
        playerScore += playerScoreToAdd
        
        playerScoresArray[playerIndex] = playerScore
        
        playerBidTextView.text.append("\n\(String(playerBid))")
        playerTrickTextView.text.append("\n\(String(playerTricks))")
        playerScoreTextView.text.append("\n\(String(playerScore))")
        print ("Values have been added")
    }
    
    
    //sets up an unwind segue to come back to the score sheet after each hand.
    @IBAction func unwindToScoreSheet(segue: UIStoryboardSegue){
        
        if let trickVC = segue.source as? TricksWonViewController {
            playerBidsArray = trickVC.bidsArray
            playerTricksWonArray = trickVC.tricksArray
            print ("data passed")
        }
        
    }
    
    @IBAction func onNextHandPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toBidsSegue", sender: nil)
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let bidsVC = segue.destination as! BidsViewController
        bidsVC.playerNamesArray = playerNamesArray
        bidsVC.mod = mod
        
    }
    
    
}



