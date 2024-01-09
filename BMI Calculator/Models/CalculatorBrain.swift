//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdul Basit on 08/01/2024.
//

// This file is responsible for getting the user height/weight selected by the user and then calculating the BMI index to one decimal place, it then returns the BMI index value to viewController. It handles the logic for getting the BMI

import UIKit

struct CalculatorBrain {
    
    // BMI? is an optional struct now, as we are getting the value of BMI? struct to the bmi variable
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight", color: UIColor.systemBlue)
        }else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal Weight", color: UIColor.systemGreen)
        }else {
            bmi = BMI(value: bmiValue, advice: "Overweight", color: UIColor.systemRed)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "NO DATA"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.blue
    }
    
    func getBmiValue() -> String {
//    format the float number to one decimal place
        return String(format: "%.1f", bmi?.value ?? 0.0)
   }
}
 
