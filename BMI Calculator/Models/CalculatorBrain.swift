//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdul Basit on 08/01/2024.
//

// This file is responsible for getting the user height/weight selected by the user and then calculating the BMI index to one decimal place, it then returns the BMI index value to viewController

import UIKit

struct CalculatorBrain {
    
//    bmi is an optional as we dont know the value of it when the app laods
    var bmi: Float?
    
     func getBmiValue() -> String {
//    format the float number to one decimal place
         return String(format: "%.1f", bmi ?? 0.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
}
 
