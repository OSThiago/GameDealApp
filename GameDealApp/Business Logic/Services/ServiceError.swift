//
//  ServiceError.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 13/03/23.
//

import Foundation

enum ServiceError: Error {
    case invalidURL
    case network(Error?)
}
