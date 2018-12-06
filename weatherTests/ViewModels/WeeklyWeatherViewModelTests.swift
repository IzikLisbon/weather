import XCTest
@testable import weather

class WeeklyWeatherViewModelTests: XCTestCase {
  
  func testSevenDays() {
    let mock = WeatherMock.create()
    let viewModel = WeeklyWeatherViewModel(model: mock)
    XCTAssertEqual(viewModel.days.count, 7)
  }
}
