//
//  DealLookupModel.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 06/03/23.
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

struct CheaperStores: Codable {
    let dealID: String
    let storeID: String
    let salePrice: String
    let retailPrice: String
}

struct CheapestPrice: Codable {
    let price: String
    let date: Int
}

extension DealLookup {
    static let theWitcher2: Self = .init(
        storeID: "1",
        gameID: "5572",
        name: "The Witcher 2: Assassins of Kings Enhanced Edition",
        salePrice: "19.99",
        retailPrice: "19.99",
        thumb: "https://cdn.cloudflare.steamstatic.com/steam/apps/20920/capsule_sm_120.jpg?t=1659618473",
        cheaperStores: [.theWircher2],
        cheapestPrice: .theWitcher2)
}

extension CheaperStores {
    static let theWircher2: Self = .init(
        dealID: "wbwSwOEEf%2FXwtxjY8CVuiEfXM4NXhJq6i8wy%2FJbS5aY%3D",
        storeID: "7",
        salePrice: "2.99",
        retailPrice: "19.99")
}

extension CheapestPrice {
    static let theWitcher2: Self = .init(
        price: "2.49",
        date: 1524419835)
}

/*
 {
     "gameInfo": {
         "storeID": "1",
         "gameID": "5572",
         "name": "The Witcher 2: Assassins of Kings Enhanced Edition",
         "steamAppID": "20920",
         "salePrice": "19.99",
         "retailPrice": "19.99",
         "steamRatingText": "Very Positive",
         "steamRatingPercent": "90",
         "steamRatingCount": "62459",
         "metacriticScore": "88",
         "metacriticLink": "/game/pc/the-witcher-2-assassins-of-kings",
         "releaseDate": 1305590400,
         "publisher": "N/A",
         "steamworks": null,
         "thumb": "https://cdn.cloudflare.steamstatic.com/steam/apps/20920/capsule_sm_120.jpg?t=1659618473"
     },
     "cheaperStores": [
         {
             "dealID": "wbwSwOEEf%2FXwtxjY8CVuiEfXM4NXhJq6i8wy%2FJbS5aY%3D",
             "storeID": "7",
             "salePrice": "2.99",
             "retailPrice": "19.99"
         }
     ],
     "cheapestPrice": {
         "price": "2.49",
         "date": 1524419835
     }
 }
 */
