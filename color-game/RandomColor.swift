//
//  RandomColor.swift
//  color-game
//
//  Created by Radharani Ribas-Valongo on 7/30/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import Foundation
import UIKit


struct RandomRGB {
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat

    init(){
        red = CGFloat.random(in: 0.0...1.0)
        green = CGFloat.random(in: 0.0...1.0)
        blue = CGFloat.random(in: 0.0...1.0)
    }
    
    func getColor() -> UIColor {
        let myColor = UIColor(red: red,
                              green: green,
                              blue: blue,
                              alpha: 1.0)
        return myColor
    }
    
    //do the comparison of button pressed to highest property here -> Bool
    func comparison(color: CGFloat) -> Bool {
        
        var currentColorRGBArr: [CGFloat] = []
        currentColorRGBArr.append(red)
        currentColorRGBArr.append(green)
        currentColorRGBArr.append(blue)
        let biggestRGB = currentColorRGBArr.max()!
        
        return biggestRGB == color
    }
}




