//
//  ViewController.swift
//  Oh Heck Score Assistant
//
//  Created by Keegan Brown on 5/17/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onStartNewGamePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toPlayersSegue", sender: nil)
    }
    
    
     // MARK: - Navigation (This will be set up for the "toPlayersSegue")
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        let playersVC = segue.destination as! PlayersViewController
        
     }
    

}

