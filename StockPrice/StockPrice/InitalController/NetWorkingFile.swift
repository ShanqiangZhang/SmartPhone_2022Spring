//
//  NetWorkingFile.swift
//  StockPrice
//
//  Created by 章善强 on 4/10/22.
//

import Foundation
import PromiseKit
import Alamofire
import SwiftyJSON

func getStockPriceURL(_ symbol : String) -> String{
    let url = "\(stockPriceURL)\(symbol)?apikey=\(apiKey)"
    return url
}

func getStockPrice(_ url : String) -> Promise<StockQuoteModel>{
    
    return Promise<StockQuoteModel> { seal -> Void in
        
        AF.request(url).responseJSON { response in
        
            if response.error != nil {
                seal.reject(response.error!)
            }
            
            let stockPrice = StockQuoteModel("","")

            let stockPriceJSON = JSON(response.data!).arrayValue
            
            guard let stock = stockPriceJSON.first else {return seal.fulfill(stockPrice)}

            stockPrice.CompanyName = stock["name"].stringValue
            stockPrice.Symbol = stock["symbol"].stringValue
            stockPrice.Price = stock["price"].doubleValue
            stockPrice.DayHigh = stock["dayHigh"].doubleValue
            stockPrice.DayLow = stock["dayLow"].doubleValue
            print(stockPrice)
            seal.fulfill(stockPrice)

            }


        }

        

}
