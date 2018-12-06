import XCTest

class DetailsWeatherViewUITests: XCTestCase {
  var app: XCUIApplication!
  
  override func setUp() {
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }
  
  func testImageVisibility() {
    let table = app.waitForWeatherTableView(testCase: self)
    // swiftlint:disable line_length
    table/*@START_MENU_TOKEN@*/.staticTexts["Monday"]/*[[".cells.staticTexts[\"Monday\"]",".staticTexts[\"Monday\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.waitForWeatherImage(testCase: self)
  }
}
