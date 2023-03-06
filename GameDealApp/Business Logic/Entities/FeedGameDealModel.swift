//
//  FeedGameDealModel.swift
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

extension FeedGameDeal {
    static let riseOfIndustryMock: Self = .init(
        gameID: "177814",
        dealID: "N1lK%2F7DR1bJ9lrEgcuPVzg15HAo4i9IavFyIbROZWLI%3D",
        storeID: "25",
        title: "Rise of Industry",
        salePrice: "0.00",
        normalPrice: "29.99",
        savings: "100.000000",
        thumb: "https://cdn.cloudflare.steamstatic.com/steam/apps/671440/capsule_sm_120.jpg?t=1674039799")
}
