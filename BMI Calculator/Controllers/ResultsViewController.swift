//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Abdul Basit on 05/08/2023.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultAdvice: UILabel!
        
    @IBAction func recalculateButton(_ sender: UIButton) {
//        Return to main VC
        self.dismiss(animated: true, completion: nil)
    }
    
    var bmiResult: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Update the label text with the passed formattedResultValue
            resultLabel.text = bmiResult
            resultAdvice.text = bmiAdvice
            view.backgroundColor = bmiColor
    }
}

// Create a label programaticalyy
//let label = UILabel()
//label.text = "Hello"
//label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
//view.addSubview(label)
