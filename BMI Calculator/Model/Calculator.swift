//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Nikola on 12/05/2020.
//  Copyright © 2020 Nikola Krstevski. All rights reserved.
//

import UIKit

struct Calculator {
    
    var bmi: BMI?
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice for you today"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func  calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
         
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight 🐜", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 0.801369863))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal weight 🕺", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 0.8))
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight 🐳", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.8009417808))
        }
        
    }
    
}
