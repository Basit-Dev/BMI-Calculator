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
    
    var bmiValue = ""
    
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
        bmiValue =  String(format: "%.1f", result)
        displayVC()
        
        // ANOTHER WAY by using segue
        // Perform a segue of ResultsViewController and the sender is ViewController
        // performSegue(withIdentifier: "ResultsViewController", sender: self)
//        Then link it with func prepare
    }
    
    func displayVC()  {
        // Instantiate Results View Controller
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        secondVC.bmiResult = bmiValue
        present(secondVC, animated: true)
    }

//Create a video about sague
