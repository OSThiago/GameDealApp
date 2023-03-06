//
//  ViewController.swift
//  GameDealApp
//
//  Created by Thiago de Oliveira Sousa on 18/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var worker = WorkerCheapShark()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
     
        //fetchGameDealList()
        //fetchStores()
    }

    func fetchGameDealList() {
        DispatchQueue.main.async {
            
            let endpoint = EndpointCasesCheapShark.getDealsList(pageNumber: 0, pageSize: 10, sortList: .DEALRATING, AAA: true, storeID: nil)
            
            self.worker.getDealsList(endpoint: endpoint) { result in
                switch result {
                case .success(let dealList):
                    print(dealList)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func fetchStores() {
        DispatchQueue.main.async {
            
            var stores = [StoresCheapShark]()
            
            self.worker.getStores { result in
                
                switch result {
                case .success(let storesList):
                    stores.append(contentsOf: storesList)
                    print(stores)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

