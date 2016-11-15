//
//  ViewController.swift
//  DevBootCampProblem
//
//  Created by Flatiron School on 11/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let arrayToPass = ["X", "X", "X", "X", "O", "O", "O", "X", "O"]
        
        print(findWins(arrayToPass))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func findWins (tictacArray : [String]) -> String{
        var didWinX: Bool = true
        var didWinO: Bool = true
        let Xwinner = "X won"
        let OWinner = "O won"
        let neutral = "Keep playing"
        for i in 0..<tictacArray.count{
            if i == 0 || i == 3 || i == 6
            {
                if (tictacArray[i].containsString("X") && tictacArray[i+1].containsString("X") && tictacArray[i+2].containsString("X")){
                    didWinX = true
                }
                    
                else if (tictacArray[i].containsString("O") && tictacArray[i+1].containsString("O") && tictacArray[i+2].containsString("O")){
                    didWinO = true
                    
                }
            }
           else {
            if i == 0 || i == 1 || i == 2 {
                if (tictacArray[i].containsString("X") && tictacArray[i+3].containsString("X") && tictacArray[i+6].containsString("X"))
                {
                    didWinX = true
                }
                else if (tictacArray[i].containsString("O") && tictacArray[i+3].containsString("O") && tictacArray[i+6].containsString("O"))
                {
                    didWinO = true
                }
            }
        }
        }
        if didWinX == true
        {
            return Xwinner
        }
        else if didWinO == true
        {
            return OWinner
        }
        else {
            return neutral
        }
    }
}

