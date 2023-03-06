//
//  StoresCheapShark.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 01/03/23.
//

import Foundation

struct StoresCheapShark: Codable {
    let storeID: String
    let storeName: String
    let images: StoreImagesCheapShark
}

struct StoreImagesCheapShark: Codable {
    let banner: String
    let logo: String
    let icon: String
}

extension StoresCheapShark {
    
    static let steamMock: Self = .init(
        storeID: "1",
        storeName: "Steam",
        images: StoreImagesCheapShark.steamMockImages)
}

extension StoreImagesCheapShark {
    static let steamMockImages: Self = .init(
        banner: "/img/stores/banners/0.png",
        logo: "/img/stores/banners/0.png",
        icon: "/img/stores/banners/0.png")
}
