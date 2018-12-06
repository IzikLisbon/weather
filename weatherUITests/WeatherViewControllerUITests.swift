import XCTest

class WeatherViewControllerUITests: XCTestCase {
  var app: XCUIApplication!
  
  override func setUp() {
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }
  
  func test7Days() {
    let table = app.waitForWeatherTableView(testCase: self)
    XCTAssertEqual(table.cells.count, 7)
  }
}
