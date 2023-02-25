//
//  EndpointCheapShark.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 25/02/23.
//

import Foundation

protocol Endpoint {
    var baseURLString: String { get }
    var path: String { get }
    var query: String? { get }
    var key: String? { get }
}

extension Endpoint {
    private var url: String {
        return baseURLString + path
    }
    
    func getUrl(query: String?, key: String?) -> String {
        var url = self.url
        
        if let queryparam = query {
            
        }
        
        if key != nil {
            
        }
            
        return url
    }
}
