//
//  GymonoTests
//
//  Created by Ali Asadi on 1/31/1401 AP.
//

import XCTest
@testable import Gymono

class VariationViewModelTestCase: XCTestCase {
    
    var ViewModel = VariationViewModel()
    
    override func setUp() {
        super.setUp()
        testGetExercise()
    }
    
    func testGetExercise(){
        let expectation = XCTestExpectation(description: "response")

        ViewModel.getExerciseInfoById(variationId: 900) { exercise in
            expectation.fulfill()
            XCTAssertNotNil(exercise)
        }
        wait(for: [expectation], timeout: 5)
    }
}
