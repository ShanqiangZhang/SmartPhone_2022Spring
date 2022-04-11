//
//  ViewController.swift
//  StockPrice
//
//  Created by 章善强 on 4/10/22.
//

import UIKit
import Alamofire
import PromiseKit
import SwiftyJSON

class ViewController: UIViewController {
    
    //FB, AAPL, GOOG, MSFT, AMZN
//    var companies = ["Apple","FaceBook","Google","Mircosoft","Amazon"]

    @IBOutlet weak var lblTableView: UIView!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblSymbol: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblDayHigh: UILabel!
    @IBOutlet weak var lblDayLow: UILabel!
    
    var stockPriceModel : [StockQuoteModel] = [StockQuoteModel]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        initStocks()
        getAAPLStock()
    }
    
    func initStocks(){
        let AAPL = StockQuoteModel("Apple", "AAPL")
        let AMZN = StockQuoteModel("Amazon", "AMZN")
        let MSFT = StockQuoteModel("Microsoft", "MSFT")
        let GOOG = StockQuoteModel("Google", "GOOG")
        let FB = StockQuoteModel("Facebook", "FB")

        stockPriceModel.append(AAPL)
        stockPriceModel.append(AMZN)
        stockPriceModel.append(MSFT)
        stockPriceModel.append(GOOG)
        stockPriceModel.append(FB)
        }



}

