//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bárbara Letelier on 22-10-25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
     
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice yet"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.orange
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more please", color: UIColor.red)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Your are really fit!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less and exercise more", color: UIColor.purple)
        }
    }
    
  
}
