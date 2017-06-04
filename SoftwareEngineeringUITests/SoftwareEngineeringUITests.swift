//
//  SoftwareEngineeringUITests.swift
//  SoftwareEngineeringUITests
//
//  Created by apple on 2017/5/28.
//  Copyright © 2017年 Wang. All rights reserved.
//

import XCTest

class ModifyViewUITests: XCTestCase {
    
    let app = XCUIApplication()
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // Login and go to TaskView
        let textField = app.textFields["用户名"]
        textField.tap()
        textField.typeText("zty")
        app.otherElements["“zty”"].tap()
        let deleteKey = app.keys["delete"]
        deleteKey.tap()
        app.buttons["Done"].tap()
        app.buttons["登录"].tap()
        app.tabBars.buttons["任务"].tap()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testAddTask() {
        
        let textField = app.textFields[" 任务描述"]
        textField.typeText("Yg")
        
        let sKey = app.keys["s"]
        sKey.tap()
        sKey.tap()
        app.keys["j"].tap()
        textField.typeText("       ")
        app.otherElements["is"].tap()
        
        let datePicker = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .datePicker).element(boundBy: 0)
        datePicker.pickerWheels["6月"].swipeUp()
        datePicker.pickerWheels["2017年"].swipeRight()
        app.buttons["Done"].tap()
        app.typeText("\n")
        app.datePickers.otherElements.containing(.pickerWheel, identifier:"6月").pickerWheels["2017年"].swipeUp()
        app.pickerWheels["3"].tap()
        app.buttons["完成"].tap()
        
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
