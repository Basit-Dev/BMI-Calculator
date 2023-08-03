//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Abdul Basit on 03/08/2023.
//

import UIKit

class ViewController: UIViewController {

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
    
    @IBAction func calculate(_ sender: UIButton) {
        let heightResult = heightSlider.value
        let weightResult = weightSlider.value
        let result = weightResult / (heightResult * heightResult)
//        Could use power of weightResult / pow(height, 2)
        
        let bmi = String(format: "%.1f", result)
        print(bmi)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
}

