//
//  SmartBrewerUITests.swift
//  SmartBrewerUITests
//
//  Created by Viktoriya Guchshina on 5/11/25.
//

import XCTest
import SmartBrewerTestKit

@MainActor
final class SmartBrewerUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    
    func testStartBrewFlow() throws {
        let brew = BrewScreen(app: app)
        
        brew.startBrew()
        brew.assertBrewingStarted()
        brew.assertAlertAppears()
    }
}
