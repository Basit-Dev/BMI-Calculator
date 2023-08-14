//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Abdul Basit on 03/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = ("\(height)m")
    }
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text = ("\(weight)Kg")
    }
    
    @IBAction func calculate(_ sender: Any) {
        let heightResult = heightSlider.value
        let weightResult = weightSlider.value
        let result = weightResult / (heightResult * heightResult)
        
//        Instantiate Results View Controller
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
        secondVC.bmiResult =  String(format: "%.1f", result)
        present(secondVC, animated: true)0
    }
}

//    // Provide an initializer for the class
//      init(bmiResult: String) {
//          self.bmiResult = bmiResult
//          super.init(nibName: nil, bundle: nil)
//      }
//
//      required init?(coder: NSCoder) {
//          fatalError("init(coder:) has not been implemented")
//      }
//    var result: Float = 0.0
//
//    // A computed property to get the formatted result
//    var formattedResult: String {
//        return String(format: "%.2f", result)
//    }
