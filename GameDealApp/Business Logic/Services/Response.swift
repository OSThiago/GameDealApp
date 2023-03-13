//
//  Response.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 13/03/23.
//

import Foundation

enum Response<Success, Failure> where Failure: Error {
    case success(Success)
    case failure(Failure)
}
