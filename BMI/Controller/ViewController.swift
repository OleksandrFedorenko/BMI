//
//  ViewController.swift
//  BMI
//
//  Created by Олександр Федоренко on 04.12.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    var CalculatorBrain = CalculateBraine()
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight.text = "\(String(format: "%.0f", sender.value))kg"
    }
    
    

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        CalculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{                                   // if we have several let say windows we want to make sure that we go to selected one
           let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiResult = CalculatorBrain.getBMIValue()
            destinationVC.advice = CalculatorBrain.getAdvice()
            destinationVC.color = CalculatorBrain.getColor()
        }
    }
    
}

