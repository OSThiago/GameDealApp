//
//  StoresCheapSharkMock.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 13/03/23.
//

import Foundation

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
