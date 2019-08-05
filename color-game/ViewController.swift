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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    var gameOverBool = false
    var highScore = 0
    var score = 0
    var colorChange = RandomRGB()
    
    func checkForNewGameButtonVisibility() {
        if gameOverBool == true {
            newGame.isHidden = false
            gameOver.isHidden = false
        }
    }
    
    func winOrLose(color: CGFloat) {
        if colorChange.comparison(color: color) == true {
            score += 1
            resetBackground()
            scoreLabel.text = "Score: \(score)"
            if score > highScore {
                highScore = score
                highScoreLabel.text = "High Score: \(highScore)"
            }
        } else {
            score = 0
            scoreLabel.text = "Score: \(score)"
            if score > highScore {
                highScore = score
                highScoreLabel.text = "High Score: \(highScore)"
            }
            gameOverBool = true
            blueButton.isEnabled = false
            greenButton.isEnabled = false
            redButton.isEnabled = false
            checkForNewGameButtonVisibility()
        }
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        viewDidLoad()
    }
    
    
    @IBAction func blueButton(_ sender: UIButton) {
        let blue = colorChange.blue
        winOrLose(color: blue)
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        let green = colorChange.green
        winOrLose(color: green)
    }
    @IBAction func redButton(_ sender: UIButton) {
        let red = colorChange.red
        winOrLose(color: red)
    }
    
    private func resetBackground() {
        colorChange = RandomRGB()
        blueButton.isEnabled = true
        greenButton.isEnabled = true
        redButton.isEnabled = true
        background.backgroundColor = colorChange.getColor()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBackground()
        newGame.isHidden = true
        gameOver.isHidden = true
        // Do any additional setup after loading the view.
    }
}

