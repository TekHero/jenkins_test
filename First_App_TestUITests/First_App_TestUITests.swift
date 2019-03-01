//
//  First_App_TestUITests.swift
//  First_App_TestUITests
//
//  Created by GoTennaAutomation on 2/22/19.
//  Copyright © 2019 GoTennaAutomation. All rights reserved.
//

import XCTest

class First_App_TestUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    var users = [String: String]()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        users["warren"] = "qadirector"
        users["ivan"] = "qaengineer"
        users["tanmay"] = "qaengineer"
        users["brian"] = "internpass"
        users["gotennapro"] = "randompassword"
        users["raf"] = "thisisapassword"

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        for (key, value) in users {
            changeTextFieldText(usernameTxt: key, passwordTxt: value)
        }
        
    }
    
    func changeTextFieldText(usernameTxt: String, passwordTxt: String) {
        
        for _ in 0..<1 {
            app.textFields["Username"].tap()
            sleep(1)
            for char in usernameTxt {
                app.keys["\(char)"].tap()
            }
            app.secureTextFields["Password"].tap()
            sleep(1)
            for char in passwordTxt {
                app.keys["\(char)"].tap()
            }
            sleep(1)
            app.buttons["Login"].tap()
            sleep(2)
        }
    }
    
    func changeTextFieldText_Oldway() {
        app.textFields["Username"].tap()
        sleep(1)
        app.keys["g"].tap()
        app.keys["o"].tap()
        app.keys["t"].tap()
        app.keys["e"].tap()
        app.keys["n"].doubleTap()
        app.keys["a"].tap()

        app.secureTextFields["Password"].tap()
        sleep(1)
        app.keys["p"].tap()
        app.keys["a"].tap()
        app.keys["s"].doubleTap()
        app.keys["w"].tap()
        app.keys["o"].tap()
        app.keys["r"].tap()
        app.keys["d"].tap()

        sleep(1)
        app.buttons["Login"].tap()
        sleep(6)
    }
}
