// The Swift Programming Language
// https://docs.swift.org/swift-book


import XCTest

@MainActor
public struct BrewScreen {
    let app: XCUIApplication
    
    public init(app: XCUIApplication) {
        self.app = app
    }
    
    public func startBrew(){
        print("🔘 Tapping 'Start Brew' button")
        app.buttons["brewButton"].tap()
    }
    
    public func assertBrewingStarted() {
        XCTAssertTrue(app.staticTexts["brewingLabel"].waitForExistence(timeout: 1))
    }
    
    public func assertAlertAppears() {
        XCTAssertTrue(app.alerts["Coffee is ready!"].waitForExistence(timeout: 5),
                      "❌ Expected 'Coffee is ready!' alert to appear")
    }
}
