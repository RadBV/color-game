//
//  RandomColor.swift
//  color-game
//
//  Created by Radharani Ribas-Valongo on 7/30/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import Foundation
import UIKit


struct randomRGB {
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat

    mutating func randomColor() -> UIColor {
        self.red = CGFloat.random(in: 0.0...1.0)
        self.green = CGFloat.random(in: 0.0...1.0)
        self.blue = CGFloat.random(in: 0.0...1.0)
        return UIColor(red: red,
                       green: green,
                       blue: blue,
                       alpha: 1.0)
    }
}


func putRGBColorsInArrayAndReturnBiggestNumber(red: CGFloat, green: CGFloat, blue: CGFloat) -> CGFloat {
    var currentColorRGBArr: [CGFloat] = []
    currentColorRGBArr.append(red)
    currentColorRGBArr.append(green)
    currentColorRGBArr.append(blue)
    let biggestRGB = currentColorRGBArr.max()!
    return biggestRGB
}

//put this stuff in the view controller

//put this stuff in the view controller
