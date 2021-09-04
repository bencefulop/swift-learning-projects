//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Bence Fulop on 4/9/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    func calculate(symbol: String) -> Double? {
        switch symbol {
        case "+/-":
           return number * -1
        case "AC":
            return Double(0)
        case "%":
            return number / 100
        default:
            return nil
        }
    }
}
