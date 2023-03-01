//
//  GameDealAppTests.swift
//  GameDealAppTests
//
//  Created by Thiago de Oliveira Sousa on 18/02/23.
//

import XCTest
@testable import GameDealApp

final class GameDealAppTests: XCTestCase {
    
    var worker = WorkerCheapShark()
    
    var endpoint = EndpointCasesCheapShark.getDealsList(pageNumber: 0, pageSize: 3, sortList: .DEALRATING, AAA: 0)
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func getDealList() throws {
        
        worker.getDealsList(endpoint: endpoint) { result, error in
            DispatchQueue.main.async {
                XCTAssert(result.count == 60)
            }
        }
        
    }
    
    func testGameDeal() throws {
        worker.getDealsList(endpoint: endpoint) { result, error in
            //DispatchQueue.main.async {
                //XCTAssertEqual(result[0].title, "batman")
                XCTAssert(result[0].title == "batman")
            //}
        }
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
