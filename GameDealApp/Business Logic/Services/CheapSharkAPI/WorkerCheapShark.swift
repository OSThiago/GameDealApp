//
//  WorkerCheapShark.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 28/02/23.
//

import Foundation

enum ServiceError: Error {
    case invalidURL
    case network(Error?)
}

class WorkerCheapShark {
    
    func getDealsList(endpoint: Endpoint, completion: @escaping ([FeedGameDeal] ,ServiceError) -> ()) {
        
        let session = URLSession.shared
        
        let url = URL(string: endpoint.url)!
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.httpMethod = endpoint.httpMethod
        
        let task = session.dataTask(with: urlRequest) { data, response, error in
            
            if let data {
                
                do {
                    let data = try JSONDecoder().decode([FeedGameDeal].self, from: data)
                    
                    completion(data, ServiceError.network(error))
                    
                } catch let error {
                    print("error \(error)")
                }
            }
        }
        task.resume()
    }
    
    func test2(completion: @escaping ([FeedGameDeal]) -> ()) {
        var request = URLRequest(url: URL(string: "https://www.cheapshark.com/api/1.0/deals?pageNumber=0&pageSize=60&sortBy=Store&AAA=0")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
            
            do {
                let data = try JSONDecoder().decode([FeedGameDeal].self, from: data)
                
                completion(data)
                
            } catch let error {
                print("error \(error)")
            }
        }

        task.resume()
    }
    
}

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
