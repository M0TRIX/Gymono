//
//  CheckResponseTestCase.swift
//  GymonoTests
//
//  Created by Ali Asadi on 1/31/1401 AP.
//

@testable import Gymono
import XCTest

class CheckResponseTestCase: XCTestCase {

    
    var url = URL(string: "test")!
    
    override func setUp() {
        super.setUp()
        
        testCheckResponseWithSuccess()
        testCheckResponseWithForbidden()
        testCheckResponseWithBadRequest()
        testCheckResponseWithInvalidResponse()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCheckResponseWithSuccess(){
        let response = HTTPURLResponse(url: url, statusCode: 200, httpVersion: "", headerFields: ["":""])
        let result = ServiceValidator.checkResposnse(response: response!, data: Data())
        XCTAssertEqual(result, ServiceError.SUCCESS)
    }
    
    func testCheckResponseWithForbidden(){
        let response = HTTPURLResponse(url: url, statusCode: 402, httpVersion: "", headerFields: ["":""])
        let result = ServiceValidator.checkResposnse(response: response!, data: Data())
        XCTAssertEqual(result, ServiceError.FORBIDDEN)
    }
    
    func testCheckResponseWithBadRequest(){
        let response = HTTPURLResponse(url: url, statusCode: 400, httpVersion: "", headerFields: ["":""])
        let result = ServiceValidator.checkResposnse(response: response!, data: Data())
        XCTAssertEqual(result, ServiceError.BADREQUEST)
    }
    
    func testCheckResponseWithInvalidResponse(){
        let response = HTTPURLResponse(url: url, statusCode: 400, httpVersion: "", headerFields: ["":""])
        let result = ServiceValidator.checkResposnse(response: response!, data: nil)
        XCTAssertEqual(result, ServiceError.INVALIDRESPONSE)
    }
}
