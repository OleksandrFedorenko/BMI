//
//  ResultViewController.swift
//  BMI
//
//  Created by Олександр Федоренко on 05.12.2022.
//

import UIKit

class ResultViewController: UIViewController {

 
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    var bmiResult: String?
    var advice: String?
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiResult
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
  
    
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }


}
