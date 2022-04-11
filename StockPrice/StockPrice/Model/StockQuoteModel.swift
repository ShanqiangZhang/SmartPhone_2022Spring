//
//  Stock Quote.swift
//  StockPrice
//
//  Created by 章善强 on 4/10/22.
//

import Foundation

class StockQuoteModel {
    
    init(_ name: String, _ symbol : String) {
        self.Symbol = symbol
        self.CompanyName = name
    }

    var CompanyName : String = ""
    var Symbol : String = ""
    var Price : Double = 1.0
    var DayHigh : Double = 1.0
    var DayLow : Double = 1.0
}
