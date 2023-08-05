//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Abdul Basit on 05/08/2023.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func recalculateButton(_ sender: UIButton) {
//        Return to main VC
        self.dismiss(animated: true, completion: nil)
    }
    
    var bmiResult = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Update the label text with the passed formattedResultValue
              resultLabel.text = bmiResult
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

// Create a label programaticalyy
//let label = UILabel()
//label.text = "Hello"
//label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
//view.addSubview(label)
