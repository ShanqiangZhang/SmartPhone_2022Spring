//
//  ProtocolSendStockPriceData.swift
//  StockPrice
//
//  Created by 章善强 on 4/10/22.
//

import Foundation

protocol sendStockPriceDelegate {
    func SendStockPriceData(_ currentStockPriceModel : StockQuoteModel)
}
