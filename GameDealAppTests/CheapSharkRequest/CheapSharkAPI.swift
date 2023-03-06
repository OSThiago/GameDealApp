//
//  CheapSharkAPI.swift
//  GameDealAppTests
//
//  Created by Thiago de Oliveira Sousa on 28/02/23.
//

import XCTest
@testable import GameDealApp

final class CheapSharkAPI: XCTestCase {
    
    var worker = WorkerCheapShark()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFeedDealList() throws {
        
        let endpoint = EndpointCasesCheapShark.getDealsList(pageNumber: 0, pageSize: 3, sortList: .DEALRATING, AAA: false, storeID: "1")
        
        // Create expectation
        let exp = expectation(description: "Fetching deals list")
        
        var list = [FeedGameDeal]()
        
        // Call asynchronous method
        worker.getDealsList(endpoint: endpoint) { result, error in
            
            list.append(contentsOf: result)
            
            // Mark fulfill when finish
            exp.fulfill()
        }
        
        // wait three seconds for all outstanding expectations to be fulfilled
        waitForExpectations(timeout: 3)
        
        // our expectation has been fulfilled, so we can check the result is correct
        XCTAssertEqual(list.count, 3)
    }
    
    func testGetStores() async throws {

        let expectation = expectation(description: "Fetch Stores informatinos")

        var stores = [StoresCheapShark]()
            
        worker.getStores() { result in
            
            switch result {
            case .success(let storesResult):
                stores.append(contentsOf: storesResult)
            case .failure(_):
                XCTFail()
            }
            expectation.fulfill()
        }
        

        await self.waitForExpectations(timeout: 3.0)
        
        XCTAssert(!stores.isEmpty)
        
        XCTAssertEqual(stores[0].storeName, StoresCheapShark.steamMock.storeName)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
