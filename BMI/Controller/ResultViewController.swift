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

    var bmiResult: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiResult
        
    }
    
  
    
    
    @IBAction func recalculateButton(_ sender: UIButton) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
