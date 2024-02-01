//
//  YummiUITests.swift
//  YummiUITests
//
//  Created by Timblo, Adi (WING) on 23/01/2024.
//

import XCTest

final class YummiUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

        func testForNextIngredient() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let collectionViewsQuery = XCUIApplication().collectionViews
        let nextIngredientButton = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Next Ingredient"]/*[[".cells.buttons[\"Next Ingredient\"]",".buttons[\"Next Ingredient\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        nextIngredientButton.tap()
//        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Name: Banana\nQuantity: 40000\nUnit: Whole\nCategory: Fruit\nExpiry Date: 12/11/2026"]/*[[".cells.staticTexts[\"Name: Banana\\nQuantity: 40000\\nUnit: Whole\\nCategory: Fruit\\nExpiry Date: 12\/11\/2026\"]",".staticTexts[\"Name: Banana\\nQuantity: 40000\\nUnit: Whole\\nCategory: Fruit\\nExpiry Date: 12\/11\/2026\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        nextIngredientButton.tap()
//        collectionViewsQuery.staticTexts["Name: Apple\nQuantity: 5\nUnit: Whole\nCategory: Fruit\nExpiry Date: 30/04/2024"]
            

        // Use XCTAssert and related functions to verify your tests produce the correct results.
            
            XCTAssertEqual(app.staticTexts, "Name: Apple\nQuantity: 5\nUnit: Whole\nCategory: Fruit\nExpiry Date: 30/04/2024")
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
