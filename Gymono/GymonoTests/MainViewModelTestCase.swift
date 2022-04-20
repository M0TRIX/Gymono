//
//  MainViewModelTestCase.swift
//  GymonoTests
//
//  Created by Ali Asadi on 1/31/1401 AP.
//

@testable import Gymono
import XCTest

class MainViewModelTestCase: XCTestCase {
    
    var mainViewModel = MainViewModel()
    
    override func setUp() {
        super.setUp()
        
        testExerciseWithNotNil()
    }
  
    func testExerciseWithNotNil(){
        let expectation = XCTestExpectation(description: "response")

        mainViewModel.getExerciseInfo(complition: { exercise in
            expectation.fulfill()
            XCTAssertNotNil(exercise)
        })
        wait(for: [expectation], timeout: 5)
    }
}
