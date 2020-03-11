//
//  HelloWorldUITests.swift
//  HelloWorldUITests
//
//  Created by xiote on 2020/03/11.
//  Copyright © 2020 xiote. All rights reserved.
//

import XCTest

class HelloWorldUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testUi() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let txtName = app.textFields["txtName"];
        txtName.tap()
        txtName.typeText("world")
        
        app.buttons["btnSend"].tap()
        
        XCTAssertTrue(app.staticTexts["lblHello"].exists, "Text field doesn't exist")
    }
}