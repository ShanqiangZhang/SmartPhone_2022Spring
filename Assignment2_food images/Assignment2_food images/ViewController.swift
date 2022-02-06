//
//  ViewController.swift
//  Assignment2_food images
//
//  Created by 章善强 on 2/5/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tblView: UITableView!
    
    let food = ["food1","food2","food3","food4","food5","food6","food7","food8","food9","food10"]
    
    let foodNames = ["fish1","fish2","fish3","fish4","fish5","fish6","fish7","fish8","fish9","fish10"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
        cell.photoCell.image = UIImage(named: food[indexPath.row])
        cell.lblCell.text = foodNames[indexPath.row]
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        
    }


}

