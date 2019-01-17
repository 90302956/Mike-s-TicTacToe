//
//  ViewController.swift
//  MyGame
//
//  Created by 90302956 on 9/14/18.
//  Copyright © 2018 Michael Werdal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var secondPlayer = false
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var pOneScore: UILabel!
    @IBOutlet weak var pTwoScore: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    var b1CanMod = true
    var b2CanMod = true
    var b3CanMod = true
    var b4CanMod = true
    var b5CanMod = true
    var b6CanMod = true
    var b7CanMod = true
    var b8CanMod = true
    var b9CanMod = true
    
    var userO = #imageLiteral(resourceName: "o")
    var userX = #imageLiteral(resourceName: "x")
    
    var playerOneScore = 0
    var playerTwoScore = 0
    var playerWon = false
    
    @IBOutlet weak var ButtonOne: UIButton!
    @IBOutlet weak var ButtonTwo: UIButton!
    @IBOutlet weak var ButtonThree: UIButton!
    
    func tellUser (){
    let alert = UIAlertController(title: "You Won!", message: "Congratulations, you beat the game!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay",
                                      style: UIAlertAction.Style.default))
        
    self.present(alert, animated: true)
    }
    
    @IBAction func Button1(_ sender: AnyObject) {
        let button1 = sender as! UIButton
        if (b1CanMod == true) {
        button1.setImage(UIImage(named: "o.png"), for: .normal)
        b1CanMod = false
        }
        nextMove(sender)
    }
    
    @IBAction func Button2(_ sender: AnyObject) {
        let button2 = sender as! UIButton
        if (b2CanMod == true) {
        button2.setImage(UIImage(named: "o.png"), for: .normal)
        b2CanMod = false
        }
        nextMove(sender)
    }
    
    @IBAction func Button3(_ sender: AnyObject) {
        let button3 = sender as! UIButton
        if (b3CanMod == true) {
        button3.setImage(UIImage(named: "o.png"), for: .normal)
        b3CanMod = false
        }
        nextMove(sender)
    }
    
    @IBAction func Button4(_ sender: AnyObject) {
        let button4 = sender as! UIButton
        if (b4CanMod == true) {
        button4.setImage(UIImage(named: "o.png"), for: .normal)
        b4CanMod = false
        }
        nextMove(sender)
    }
    
    @IBAction func Button5(_ sender: AnyObject) {
        let button5 = sender as! UIButton
        if (b5CanMod == true) {
        button5.setImage(UIImage(named: "o.png"), for: .normal)
        b5CanMod = false
        }
        nextMove(sender)
    }
    
    @IBAction func Button6(_ sender: AnyObject) {
        let button6 = sender as! UIButton
        if (b6CanMod == true) {
            button6.setImage(UIImage(named: "o.png"), for: .normal)
        b6CanMod = false
        }
        nextMove(sender)
    }
    
    @IBAction func Button7(_ sender: AnyObject) {
        let button7 = sender as! UIButton
        if (b7CanMod == true) {
        button7.setImage(UIImage(named: "o.png"), for: .normal)
        b7CanMod = false
        }
        nextMove(sender)
    }
    
    @IBAction func Button8(_ sender: AnyObject) {
        let button8 = sender as! UIButton
        if (b8CanMod == true) {
        button8.setImage(UIImage(named: "o.png"), for: .normal)
        b8CanMod = false
        }
        nextMove(sender)
    }
    
    @IBAction func Button9(_ sender: AnyObject) {
        let button9 = sender as! UIButton
        if (b9CanMod == true) {
        button9.setImage(UIImage(named: "o.png"), for: .normal)
        b9CanMod = false
        }
        nextMove(sender)
    }
    
    func nextMove(_ sender: AnyObject) {
        if ((b9.currentImage?.isEqual(UIImage(named: "o.png")))! && (b8.currentImage?.isEqual(UIImage(named: "o.png")))! && (b7.currentImage?.isEqual(UIImage(named: "o.png")))!) ||
            ((b7.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b4.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b1.currentImage?.isEqual(UIImage(named: "o.png")))!) ||
            ((b1.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b2.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b3.currentImage?.isEqual(UIImage(named: "o.png")))!) ||
            ((b3.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b6.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b9.currentImage?.isEqual(UIImage(named: "o.png")))!) ||
            ((b2.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b5.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b8.currentImage?.isEqual(UIImage(named: "o.png")))!) ||
            ((b7.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b5.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b3.currentImage?.isEqual(UIImage(named: "o.png")))!) ||
            ((b1.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b5.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b9.currentImage?.isEqual(UIImage(named: "o.png")))!) ||
            ((b4.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b5.currentImage?.isEqual(UIImage(named: "o.png")))! &&
                (b6.currentImage?.isEqual(UIImage(named: "o.png")))!)
        {
            //do something here
            playerOneScore += 1
            let score = String(playerOneScore)
            pOneScore.text = "  Player's Score: " + score + "  "
            if (playerOneScore >= 3) {
                tellUser()
            }
        }
        if ((b9.currentImage?.isEqual(UIImage(named: "x.png")))! && (b8.currentImage?.isEqual(UIImage(named: "x.png")))! && (b7.currentImage?.isEqual(UIImage(named: "x.png")))!) ||
            ((b7.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b4.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b1.currentImage?.isEqual(UIImage(named: "x.png")))!) ||
            ((b1.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b2.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b3.currentImage?.isEqual(UIImage(named: "x.png")))!) ||
            ((b3.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b6.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b9.currentImage?.isEqual(UIImage(named: "x.png")))!) ||
            ((b2.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b5.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b8.currentImage?.isEqual(UIImage(named: "x.png")))!) ||
            ((b7.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b5.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b3.currentImage?.isEqual(UIImage(named: "x.png")))!) ||
            ((b1.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b5.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b9.currentImage?.isEqual(UIImage(named: "x.png")))!) ||
            ((b4.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b5.currentImage?.isEqual(UIImage(named: "x.png")))! &&
                (b6.currentImage?.isEqual(UIImage(named: "x.png")))!) {
            playerTwoScore += 1
            let score2 = String(playerTwoScore)
            pTwoScore.text = "  Computer's Score: " + score2 + "  "
            if (playerTwoScore >= 3) {
                tellUser()
            }
        }
        var loopDone = false
        
        while (loopDone == false) {
        let randomInt = Int.random(in: 0..<9)
        if (randomInt == 0 && b1CanMod) {
            b1.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else if (randomInt == 1 && b2CanMod) {
            b2.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else if (randomInt == 2 && b3CanMod) {
            b3.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else if (randomInt == 3 && b4CanMod) {
            b4.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else if (randomInt == 4 && b5CanMod) {
            b5.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else if (randomInt == 5 && b6CanMod) {
            b6.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else if (randomInt == 6 && b7CanMod) {
            b7.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else if (randomInt == 7 && b8CanMod) {
            b8.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else if (randomInt == 8 && b9CanMod) {
            b9.setImage(UIImage(named: "x.png"), for: .normal)
            loopDone = true
        } else {
            loopDone = false
        }
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func ResetButton(_ sender: Any) {
        b1.setImage(UIImage(named: "transparent.png"), for: .normal)
        b2.setImage(UIImage(named: "transparent.png"), for: .normal)
        b3.setImage(UIImage(named: "transparent.png"), for: .normal)
        b4.setImage(UIImage(named: "transparent.png"), for: .normal)
        b5.setImage(UIImage(named: "transparent.png"), for: .normal)
        b6.setImage(UIImage(named: "transparent.png"), for: .normal)
        b7.setImage(UIImage(named: "transparent.png"), for: .normal)
        b8.setImage(UIImage(named: "transparent.png"), for: .normal)
        b9.setImage(UIImage(named: "transparent.png"), for: .normal)
        b1CanMod = true
        b2CanMod = true
        b3CanMod = true
        b4CanMod = true
        b5CanMod = true
        b6CanMod = true
        b7CanMod = true
        b8CanMod = true
        b9CanMod = true
        
    }
    
    @IBAction func resetAll(_ sender: Any) {
        ResetButton(sender)
        playerOneScore = 0
        let score = String(playerOneScore)
        pOneScore.text = "  Player's Score: " + score + "  "

        playerTwoScore = 0
        let score2 = String(playerTwoScore)
        pTwoScore.text = "  Computer's Score: " + score2 + "  "
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

