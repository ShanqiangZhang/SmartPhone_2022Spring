//
//  StockPriceTableViewCell.swift
//  StockPrice
//
//  Created by 章善强 on 4/10/22.
//

import UIKit

class StockPriceTableViewCell: UITableViewCell {
    
    var companyName = ""
    var symbol = ""
    var sendStockDelegates : sendStockPriceDelegate?
    
    @IBOutlet weak var lblCompany: UILabel!
    
    @IBOutlet weak var lblSymbol: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
    @IBAction func getPrice(_ sender: Any) {
        let stockURL = getStockPriceURL(symbol)
        getStockPrice(stockURL).done { quote in
//            quote.CompanyName = self.companyName
            self.sendStockDelegates?.SendStockPriceData(quote)
        }
        .catch { error in
            print(error.localizedDescription)
        }
    }

}
