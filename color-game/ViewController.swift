//
//  ViewController.swift
//  color-game
//
//  Created by Radharani Ribas-Valongo on 7/30/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIView!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var newGame: UIButton!
    @IBOutlet weak var gameOver: UILabel!
    var gameOverBool = false
    var highScore = 0
    let random = randomRGB()
//    let colors = randomRGB()
    var score = 0
  let biggestRGB = putRGBColorsInArrayAndReturnBiggestNumber(red: colors.red, green: colors.green, blue: colors.blue)
    
    func checkForNewGameButtonVisibility() {
        if gameOverBool == true {
            newGame.isHidden = false
            gameOver.isHidden = false
        }
    }
    
    func winOrLose(color: CGFloat) {
        if biggestRGB == color {
            score += 1
            background.backgroundColor = random.randomColor()
        } else {
            score = 0
            gameOverBool = true
        }
    }
    
    @IBAction func buttonThatChangesColorOfView(_ sender: UIButton) {
        background.backgroundColor = random.randomColor()
//        gameOverBool = false
    }
    
    
    @IBAction func blueButton(_ sender: UIButton) {
        let blue = colors.blue
//        winOrLose(color: blue)
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        let green = colors.green
//        winOrLose(color: green)
    }
    @IBAction func redButton(_ sender: UIButton) {
        let red = colors.red
//        winOrLose(color: red)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

