//
//  TableViewCell.swift
//  Assignment2_food images
//
//  Created by 章善强 on 2/5/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblCell: UILabel!
    @IBOutlet weak var photoCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
