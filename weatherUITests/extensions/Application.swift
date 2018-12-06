import XCTest

extension XCUIApplication {
  func waitForWeatherTableView(testCase: XCTestCase) -> XCUIElement {
    let exists = NSPredicate.init(format: "exists == 1")
    let table = self.tables[Accessiblity.DailyWeatherTableView]
    let expectation = testCase.expectation(for: exists, evaluatedWith: table, handler: nil)
    testCase.wait(for: [expectation], timeout: 7)
    return table
  }
  
  func waitForWeatherImage(testCase: XCTestCase) {
    let exists = NSPredicate.init(format: "exists == 1")
    let weatherImage = self.images[Accessiblity.WeatherImage]
    let expectation = testCase.expectation(for: exists, evaluatedWith: weatherImage, handler: nil)
    testCase.wait(for: [expectation], timeout: 2)
  }
}
