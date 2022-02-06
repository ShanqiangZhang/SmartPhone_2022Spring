//
//  TableViewController.swift
//  test
//
//  Created by 章善强 on 2/5/22.
//

import UIKit
/*
 1.remove view controller and code
 2.add a tableview controller to storyboard and add "cell" as reusable identifer
 3.make tableview as inital VC
 4.add table view controller code file and map UI and Code file
 5.remove boiler plate code and have 2 functions numberOfRowsIndextion and cellForRowAt
 6.add array and return arr.count in nunmberOfRowsIndextion
 7.return the cell (configure cell to use the array)
 */

class TableViewController: UITableViewController {

    let arr = ["list1","list2","list3","list4","list5"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    



}
