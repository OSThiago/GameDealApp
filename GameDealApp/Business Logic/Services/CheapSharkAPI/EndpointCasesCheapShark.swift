//
//  EndPointCasesCheapShark.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 27/02/23.
//

import Foundation

enum EndpointCasesCheapShark: Endpoint {
    
    case getDealsList(pageNumber: Int, pageSize: Int, sortList: CheapSharkSortDeals, AAA: Int)
    case getDealLookup(_ dealID: String)
    case getGameLookup(_ gameID: String)
    case getStores(Void)
    
    var baseURLString: String {
        return BaseURL.cheapsharkURL
    }
    
    var httpMethod: String {
        switch self {
            
        case .getDealsList(pageNumber: _, pageSize: _, sortList: _, AAA: _):
            return "GET"
        case .getDealLookup(_):
            return "GET"
        case .getGameLookup(_):
            return "GET"
        case .getStores():
            return "GET"
        }
    }
    
    var path: String {
        switch self {
        case .getDealsList(pageNumber: _, pageSize: _, sortList: _, AAA: _):
            return "/api/1.0/deals?"
        case .getDealLookup(_):
            return "/api/1.0/deals?"
        case .getGameLookup(_):
            return "/api/1.0/deals?"
        case .getStores():
            return "api/1.0/stores?"
        }
    }
    
    var query: String? {
        switch self {
        case .getDealsList(pageNumber: let pageNumber, pageSize: let pageSize, sortList: let sortList, AAA: let AAA):
            return "pageNumber=\(pageNumber)&pageSize=\(pageSize)&sortList=\(sortList)&AAA\(AAA)"
            
        case .getDealLookup(dealID: let dealID):
            return "id=\(dealID)"
            
        case .getGameLookup(gameID: let gameID):
            return "id=\(gameID)"
            
        case .getStores():
            return nil
        }
    }
    
    var key: String? {
        return nil
    }
}

//enum QueryCheapShark {
//    case pageNumber(_ pageNumber: Int)
//    case pageSize(_ pageSize: Int)
//    case sortBy(_ sortList: CheapSharkSortDeals)
//    case AAA(_ onlyAAA: Int)
//}

enum CheapSharkSortDeals: String {
    case DEALRATING = "DealRating"
    case SAVINGS = "Savings"
    case PRICE = "Price"
    case METACRITIC = "Metacritic"
    case REVIEWS = "Reviews"
    case RELEASE = "Release"
    case STORE = "Store"
    case RECENT = "Recent"
}
