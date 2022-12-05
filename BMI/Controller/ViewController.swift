//
//  ViewController.swift
//  BMI
//
//  Created by Олександр Федоренко on 04.12.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    var bmiValue = ""
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight.text = "\(String(format: "%.0f", sender.value))kg"
    }
    
    

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print(heightSlider.value)
        print(weightSlider.value)
       let bmi = weightSlider.value / (heightSlider.value * heightSlider.value)
        bmiValue = String(format: "%.2f", bmi)
        print("bmi - \(bmiValue)")
    }
    
}

