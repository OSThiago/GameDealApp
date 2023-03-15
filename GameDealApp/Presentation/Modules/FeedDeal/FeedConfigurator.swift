//
//  FeedConfigurator.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 14/03/23.
//

import Foundation

class FeedConfigurator {
    
    static func configureModule(viewController: FeedViewController) {
        let view = FeedView()
        let router = FeedRounter()
        let interactor = FeedInteractor()
        let presenter = FeedPresenter()
        
        viewController.feedView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        presenter.viewControler = viewController
        router.navigationController = viewController.navigationController
    }
    
}
