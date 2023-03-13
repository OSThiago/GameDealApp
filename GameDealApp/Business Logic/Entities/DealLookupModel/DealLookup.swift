//
//  DealLookup.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 13/03/23.
//

import Foundation

struct DealLookup: Codable {
    let storeID: String
    let gameID: String
    let name: String
    let salePrice: String
    let retailPrice: String
    let thumb: String
    let cheaperStores: [CheaperStores]
    let cheapestPrice: CheapestPrice
}
