//
//  SmartBrewerUITests.swift
//  SmartBrewerUITests
//
//  Created by Viktoriya Guchshina on 5/11/25.
//

import XCTest

final class SmartBrewerUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    func testStartBrewFlow() throws {
        let brewButton = app.buttons["Brew"]
        XCTAssertTrue(brewButton.exists)
        
        brewButton.tap()
        XCTAssert(app.staticTexts["brewingLabel"].waitForExistence(timeout: 1))
        
        //wait for the alert
        let alert = app.alerts["Coffe is ready!"]
        XCTAssert(alert.waitForExistence(timeout: 5))
        
    }
    
}
