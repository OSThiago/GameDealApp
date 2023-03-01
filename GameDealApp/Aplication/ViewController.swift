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
     
        fetchGameDealList()
        //fetchGameList2()
    }

    func fetchGameDealList() {
        DispatchQueue.main.async {
            
            let endpoint = EndpointCasesCheapShark.getDealsList(pageNumber: 0, pageSize: 3, sortList: .DEALRATING, AAA: 0)
            
            self.worker.getDealsList(endpoint: endpoint) { data, error in
                print(data)
            }
        }
    }
    
    func fetchGameList2() {
        DispatchQueue.main.async {
            self.worker.test2 { list in
                print(list)
            }
        }
    }

}

