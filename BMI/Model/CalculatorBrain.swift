//
//  CalculateBrain.swift
//  BMI
//
//  Created by Олександр Федоренко on 05.01.2023.
//

import Foundation


class CalculateBraine{
    
    var bmiValue: Float?
    
    func calculateBMI(height: Float, weight: Float) {
        bmiValue = weight / (height * height)
       
    }

    func getBMIValue() -> String {
        if let safeBmiValue = bmiValue{
            let valueToString = String(format: "%.1f", safeBmiValue)
            return valueToString
        }else{
            return "0.0"
        }
       
    }
}

