//
//  ServiceApiTestCase.swift
//  GymonoTests
//
//  Created by Ali Asadi on 1/31/1401 AP.
//

@testable import Gymono
import XCTest
import UIKit
import Foundation

class ServiceApiTestCase: XCTestCase {

    override func setUp() {
        super.setUp()
        
        testExersiciseInfoById()
        testListOfExerciseInfo()
    }

    func testExersiciseInfoById(){
        let expectation = XCTestExpectation(description: "response")
  
        ServiceApi.shared.getExerciseInfoById(exerciseID: 900) { exercise, response, data in
            expectation.fulfill()
            XCTAssertNotNil(exercise)
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testListOfExerciseInfo(){
        let expectation = XCTestExpectation(description: "response")

        ServiceApi.shared.getListOfExerciseInfo { exerciseInfo, response, data in
            expectation.fulfill()
            XCTAssertNotNil(exerciseInfo)
        }
        wait(for: [expectation], timeout: 5)
    }
}
