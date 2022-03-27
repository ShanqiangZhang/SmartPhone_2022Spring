//
//  ViewController.swift
//  AlertController
//
//  Created by 章善强 on 3/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblAlert: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressMe(_ sender: Any) {
        
        var txtField : UITextField?
        
        let alertController = UIAlertController(title: "Sample Alert Controller", message: "Simple Message", preferredStyle: .alert)
        
        //declare buttons
        let OKButton = UIAlertAction(title: "OK", style: .default) { action in
            print("OK Button pressed")
            self.lblAlert.text = txtField?.text
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel Button Pressed")
        }
        
        //add buttons
        alertController.addAction(OKButton)
        alertController.addAction(cancelButton)
        
        alertController.addTextField{ lblTextField in
            lblTextField.placeholder = "Type Something"
            txtField = lblTextField
        }
        
        //present
        self.present(alertController, animated: true, completion: nil)

        
    }
    
}

