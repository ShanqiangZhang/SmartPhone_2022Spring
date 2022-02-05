//
//  ViewController.swift
//  ClassicTableView
//
//  Created by 章善强 on 2/5/22.
//

import UIKit
/*
 1.add table view to storyboard
 2.add table view cell to table view
 3.create identifier for table view cell and call it "cell"
 4.create outlet of table view to the code call the table view as "tblView" (connect table view and code)
 5.add protocols(UITableViewDelegate, UITableViewDataSource) to the class
 6.add function for table view(numberOfRowsInSection, cellForRowAt)
 7.in viewDidLoad add (
            tblView.delegate = self
            tblView.dataSource = self)
 8.create an array for data values
 9. return array.count in numberOfRowsInSection function
 10.fill the cellForRowAt function
 */

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tblView: UITableView!
    let arr = ["Mark","Bill","Peter","John","Tom"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

