//
//  CalculateBrain.swift
//  BMI
//
//  Created by Олександр Федоренко on 05.01.2023.
//

import Foundation


class CalculateBraine{
    
    var bmiValue: String?
    
    func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / (height * height)
        bmiValue = String(format: "%.2f", bmi)
        
    }
}

