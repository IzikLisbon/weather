import XCTest
@testable import weather

class DailyWeatherViewModelTests: XCTestCase {
  
  func testTemperature() {
    let mock = DailyWeatherMock.create(temp: 10)
    let viewModel = DailyWeatherViewModel(model: mock)
    XCTAssertEqual(viewModel.temparture, "10" + Constants.Degree)
  }
  
  func testDay() {
    let mock = DailyWeatherMock.create(day: .Friday)
    let viewModel = DailyWeatherViewModel(model: mock)
    XCTAssertEqual(viewModel.day, "Friday")
  }
}
