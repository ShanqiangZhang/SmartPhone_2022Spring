//
//  ViewController.swift
//  Assignment3_segue
//
//  Created by 章善强 on 2/14/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonGoToSVC(_ sender: Any) {
        performSegue(withIdentifier: "segueToSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSecondVC" {
            let show = segue.destination as! SecondViewController
            show .WelcomeStr = "Welcome \(txtFirstName.text!) , \(txtLastName.text!)"
        }
    }
}

