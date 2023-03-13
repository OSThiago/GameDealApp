//
//  FeedGameDeal.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 02/03/23.
//

import Foundation

struct FeedGameDeal: Codable {
    let gameID: String
    let dealID: String
    let storeID: String
    let title: String
    let salePrice: String
    let normalPrice: String
    let savings: String
    let thumb: String
}
