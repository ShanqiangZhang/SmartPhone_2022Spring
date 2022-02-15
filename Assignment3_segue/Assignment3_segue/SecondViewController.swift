//
//  SecondViewController.swift
//  Assignment3_segue
//
//  Created by 章善强 on 2/14/22.
//

import UIKit

class SecondViewController: UIViewController {

    var WelcomeStr = ""
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcome.text = WelcomeStr
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoToVC(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
