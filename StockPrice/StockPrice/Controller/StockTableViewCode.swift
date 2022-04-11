//
//  StockTableViewCode.swift
//  StockPrice
//
//  Created by 章善强 on 4/10/22.
//

import Foundation
import UIKit

extension ViewController : UITableViewDelegate, UITableViewDataSource, sendStockPriceDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stockPriceModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("StockPriceTableViewCell", owner: self, options: nil)?.first as! StockPriceTableViewCell
        let stockModel = stockPriceModel[indexPath.row]
        
        cell.companyName = stockModel.CompanyName
        cell.symbol = stockModel.Symbol
        cell.lblSymbol.text = stockModel.Symbol
        cell.lblCompany.text = stockModel.CompanyName
        cell.sendStockDelegates = self
       
        return cell
        
    }
    
    func getAAPLStock(){
        let url = "https://financialmodelingprep.com/api/v3/quote/AAPL?apikey=86282004c93130a90497e170bc0145e7"
        getStockPrice(url)
            .done { stockQuoteModel in
                self.lblCompanyName.text = "Company : \(stockQuoteModel.CompanyName)"
                self.lblSymbol.text = "Symbol : \(stockQuoteModel.Symbol)"
                self.lblPrice.text = "Price : \(stockQuoteModel.Price)"
                self.lblDayHigh.text = "DayHigh : \(stockQuoteModel.DayHigh)"
                self.lblDayLow.text = "DayLow : \(stockQuoteModel.DayLow)"
            }
            .catch { error in
                print(error)
            }
                
        }
    
    
    func SendStockPriceData(_ currentStockPriceModel: StockQuoteModel) {
        lblCompanyName.text = "Company: \(currentStockPriceModel.CompanyName)"
        lblSymbol.text = "Symbol: \(currentStockPriceModel.Symbol)"
        lblPrice.text = "Price: \(currentStockPriceModel.Price)"
        lblDayHigh.text = "DayHigh: \(currentStockPriceModel.DayHigh)"
        lblDayLow.text = "DayLow: \(currentStockPriceModel.DayLow)"
    }
}
