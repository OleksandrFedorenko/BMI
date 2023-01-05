//
//  CalculateBrain.swift
//  BMI
//
//  Created by Олександр Федоренко on 05.01.2023.
//

import Foundation
import UIKit

class CalculateBraine{
    
    var bmiValue: BMI?
    
    func calculateBMI(height: Float, weight: Float) {
        print("\(height) - \(weight)")
        let bmi = weight / (height * height)
        if bmi < 18.5{
            bmiValue = BMI(value: bmi, advice: "Underweight", color: UIColor(red: 253.0/255, green: 138.0/255, blue: 138.0/255, alpha: 1.0))
        }else if bmi < 24.9{
            bmiValue = BMI(value: bmi, advice: "Normal", color: UIColor(red: 0.0, green: 129.0/255, blue: 201.0/255, alpha: 1.0))
        }else{
            bmiValue = BMI(value: bmi, advice: "Overweight", color: UIColor(red: 251.0/255, green: 194.0/255, blue: 82.0/255, alpha: 1))
        }
    }

    func getBMIValue() -> String {
        let valueToString = String(format: "%.2f", bmiValue?.value ?? "0.0")// nil coalescing
        print("bmi - \(valueToString)")
        return valueToString
    }
    
    func getAdvice() -> String {
        print("advice - \(bmiValue?.advice)")
        return bmiValue?.advice ?? "got nil in getAdvice"
    }
    
    func getColor() -> UIColor {
        print("color - \(bmiValue?.color)")
        if let safeColor = bmiValue?.color{
            return safeColor
        }else{
            return UIColor(red: 247, green: 245, blue: 235, alpha: 0)
        }
    }
}


