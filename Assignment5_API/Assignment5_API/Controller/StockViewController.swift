//
//  StockViewController.swift
//  Assignment5_API
//
//  Created by 章善强 on 3/2/22.
//

import UIKit
import SwiftyJSON
import Alamofire
import SwiftSpinner

class StockViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
    
    @IBOutlet weak var lblGetRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getRate(_ sender: Any) {
//        let symbol = txtStockSymbol.text!
        guard let symbol = txtStockSymbol.text?.uppercased() else {return}
        let url = "\(discountedCaseFloURL)\(symbol)?apikey=\(apikey)"
        print(url)
        
        SwiftSpinner.show("getting Rate for \(symbol)")
        AF.request(url).responseJSON { response in
            SwiftSpinner.hide(nil)
            if response.error != nil{
                print(response.error!)
                return
            }
            let stocks = JSON(response.data!).array
//            print(stocks)
            guard let stocks = stocks?.first else {
                return
            }
            print(stocks)
            
            let rate = RateCompany()
            rate.symbol = stocks["symbol"].stringValue
            rate.date = stocks["date"].stringValue
            rate.ratingScore = stocks["ratingScore"].intValue
            rate.recommendation = stocks["ratingDetailsPBRecommendation"].stringValue
            self.lblGetRate.text = "\(rate.symbol) rating score : \(rate.ratingScore), date : \(rate.date), recommendation : \(rate.recommendation)"

        }
        
        

    }
}
