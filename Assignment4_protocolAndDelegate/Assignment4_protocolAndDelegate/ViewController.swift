//
//  ViewController.swift
//  Assignment4_protocolAndDelegate
//
//  Created by 章善强 on 2/22/22.
//

import UIKit

class ViewController: UIViewController, SendNameBackDelegate {

    

    @IBOutlet weak var lblFirstName: UILabel!
    
    @IBOutlet weak var lblLastName: UILabel!
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    @IBAction func buttonGetName(_ sender: Any) {
        performSegue(withIdentifier: "segueGoSVC", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueGoSVC"{
            let tempSecondVC = segue.destination as! GetNameViewController
            
            guard let firstName = lblFirstName.text else { return  }
            guard let lastName = lblLastName.text else { return }
            tempSecondVC.FirstNameInGetNameVC = firstName
            tempSecondVC.LastNameInGetNameVC = lastName
            
            
            tempSecondVC.sendNameBackDelegate = self
            
            
        }
    }
    
    func sendNameBack(UserInputFirstName: String, UserInputLastName: String) {
        lblFirstName.text = UserInputFirstName
        lblLastName.text = UserInputLastName
    }
    
    func showWelcomeAndName(WelcomePlusSthText: String) {
        lblWelcome.text = WelcomePlusSthText
    }
}

