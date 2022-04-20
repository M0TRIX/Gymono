//
//  GymonoUITests.swift
//  GymonoUITests
//
//  Created by Ali Asadi on 1/26/1401 AP.
//

import XCTest

class ExercisesListUITests: XCTestCase {

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        app.tables.cells.firstMatch.images["nextImage"].tap()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
