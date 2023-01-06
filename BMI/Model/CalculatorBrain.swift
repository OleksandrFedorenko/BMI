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
    
    /// Function that calculate BMI value according to the passed parameters such as height and weight. Also fullfill BMI structer according to the value we have  calculated namly value, advice, and color.
    /// - Parameters:
    ///   - height: taken from the heightSlider
    ///   - weight: taken frome the weightSlider
    func calculateBMI(height: Float, weight: Float) {
        print("\(height) - \(weight)")
        let bmi = weight / (height * height)
        if bmi < 18.5{
            bmiValue = BMI(value: bmi, advice: "Underweight", color: UIColor(red: 255/255, green: 202/255, blue: 200/255, alpha: 1.0))
        }else if bmi < 24.9{
            bmiValue = BMI(value: bmi, advice: "Normal", color: UIColor(red: 192/255, green: 238/255, blue: 228/255, alpha: 1.0))
        }else{
            bmiValue = BMI(value: bmi, advice: "Overweight", color: UIColor(red: 251/255, green: 194/255, blue: 82/255, alpha: 1))
        }
    }
    
    /// Downcasting float bmi value  to the string type using nil coalescing approach
    /// - Returns: String type of BMI value
    func getBMIValue() -> String {
        let valueToString = String(format: "%.2f", bmiValue?.value ?? "0.0")// nil coalescing
        return valueToString
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "got nil in getAdvice"
    }

    func getColor() -> UIColor {
        if let safeColor = bmiValue?.color{
            return safeColor
        }else{
            return UIColor(red: 247, green: 245, blue: 235, alpha: 0)
        }
    }
}
