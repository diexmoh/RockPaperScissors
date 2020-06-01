//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Diego Olvera on 01/06/20.
//  Copyright © 2020 Diego Olvera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var systemView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let arrayPlays = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "paper"), #imageLiteral(resourceName: "scissors")]
    
    @IBAction func rockOption(_ sender: Any) {
        systemView.image = arrayPlays.randomElement()
        whoWins(playerChoice: 0)
    }
    
    @IBAction func paperOption(_ sender: Any) {
        systemView.image = arrayPlays.randomElement()
        whoWins(playerChoice: 1)
    }
    
    @IBAction func scissorsOption(_ sender: Any) {
        systemView.image = arrayPlays.randomElement()
        whoWins(playerChoice: 2)
    }
    func whoWins(playerChoice: Int){
        if(playerChoice == 0){
            if(systemView.image == #imageLiteral(resourceName: "rock")){
                labelView.text = "Draw!"
            }else if(systemView.image == #imageLiteral(resourceName: "scissors")){
                labelView.text = "You win!"
            }else if(systemView.image == #imageLiteral(resourceName: "paper")){
                labelView.text = "You lose!"
            }
        }
        if(playerChoice == 1){
            if(systemView.image == #imageLiteral(resourceName: "paper")){
                labelView.text = "Draw!"
            }else if(systemView.image == #imageLiteral(resourceName: "rock")){
                labelView.text = "You win!"
            }else if(systemView.image == #imageLiteral(resourceName: "scissors")){
                labelView.text = "You lose!"
            }
        }
        if(playerChoice == 2){
            if(systemView.image == #imageLiteral(resourceName: "scissors")){
                labelView.text = "Draw!"
            }else if(systemView.image == #imageLiteral(resourceName: "paper")){
                labelView.text = "You win!"
            }else if(systemView.image == #imageLiteral(resourceName: "rock")){
                labelView.text = "You lose!"
            }
        }
    }
}

