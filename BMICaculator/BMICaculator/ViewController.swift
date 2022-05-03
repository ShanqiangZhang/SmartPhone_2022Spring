//
//  ViewController.swift
//  BMICaculator
//
//  Created by 章善强 on 5/2/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var metricSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightField.delegate = self
        weightField.delegate = self
    }

    @IBAction func calculateButton(_ sender: UIButton?) {
        if weightField.text != nil && heightField.text != nil, var weight = Double(weightField.text!), var height = Double(heightField.text!) {
            self.view.endEditing(true)
            //convert to metric first
            if !metricSwitch.isOn {
                (weight) *= 0.453592;
                (height) *= 0.0254;
            }
            let BMI: Double = weight / (height * height)
            let userBMI = String(format: "%.2f", BMI)
            var resultText = "Your BMI is \(userBMI): "
            var describe : String?
            if(BMI < 18.50) {
                describe = "Underweight"
            } else if(BMI < 24.99) {
                describe = "Healthy weight"
            } else if(BMI < 29.99) {
                describe = "Overweight"
            } else {
                describe = "Obese"
            }
            resultText += describe!
            print(resultText)
            resultLabel.text = resultText
        } else {
            resultLabel.text = "Please fill out height and weight."
        }
    }
    @IBAction func metricSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            heightField.placeholder = "Height(m)"
            weightField.placeholder = "Weight(kg)"
        } else {
            heightField.placeholder = "Height(in)"
            weightField.placeholder = "Weight(lbs)"
        }
    }
}

