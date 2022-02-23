//
//  GetNameViewController.swift
//  Assignment4_protocolAndDelegate
//
//  Created by 章善强 on 2/22/22.
//

import UIKit

protocol SendNameBackDelegate {
    func sendNameBack (UserInputFirstName : String, UserInputLastName : String)
    func showWelcomeAndName (WelcomePlusSthText : String)
}

class GetNameViewController: UIViewController {

    var FirstNameInGetNameVC : String?
    var LastNameInGetNameVC : String?
    
    var sendNameBackDelegate : SendNameBackDelegate?
    
    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let firstName = FirstNameInGetNameVC else { return }
        guard let lastName = LastNameInGetNameVC else { return }
        txtFirstName.text = firstName
        txtLastName.text = lastName
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveName(_ sender: Any) {
        guard let firstNameTemp = txtFirstName.text else { return }
        guard let lastNameTemp = txtLastName.text else { return }
        sendNameBackDelegate?.sendNameBack(UserInputFirstName: firstNameTemp, UserInputLastName: lastNameTemp)
        sendNameBackDelegate?.showWelcomeAndName(WelcomePlusSthText: "Welcome \(firstNameTemp), \(lastNameTemp)")
        
        self.navigationController?.popViewController(animated: true)
    }

}
