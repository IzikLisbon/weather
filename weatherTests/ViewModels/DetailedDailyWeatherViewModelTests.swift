import XCTest
@testable import weather

class DetailedDailyWeatherViewModelTests: XCTestCase {
  
  func testTemperature() {
    let mock = DailyWeatherMock.create(temp: 10)
    let viewModel = DetailedDailyWeatherViewModel(model: mock)
    XCTAssertEqual(viewModel.temparture, "10" + Constants.Degree)
  }
  
  func testDay() {
    let mock = DailyWeatherMock.create(day: .Friday)
    let viewModel = DetailedDailyWeatherViewModel(model: mock)
    XCTAssertEqual(viewModel.day, "Friday")
  }
  
  func testHumidity() {
    let mock = DailyWeatherMock.create(humidity: 10)
    let viewModel = DetailedDailyWeatherViewModel(model: mock)
    XCTAssertEqual(viewModel.humidity, "10%")
  }
  
  func testRainImage() {
    let mock = DailyWeatherMock.create(state: "rain")
    let viewModel = DetailedDailyWeatherViewModel(model: mock)
    XCTAssert(viewModel.image.isEqualToImage(UIImage(named: ImageNames.Rain)!))
  }
  
  func testCloudyImage() {
    let mock = DailyWeatherMock.create(state: "cloudy")
    let viewModel = DetailedDailyWeatherViewModel(model: mock)
    XCTAssert(viewModel.image.isEqualToImage(UIImage(named: ImageNames.Cloudy)!))
  }
  
  func testSunnyImage() {
    let mock = DailyWeatherMock.create(state: "sunny")
    let viewModel = DetailedDailyWeatherViewModel(model: mock)
    XCTAssert(viewModel.image.isEqualToImage(UIImage(named: ImageNames.Sun)!))
  }
  
  func testStormyImage() {
    let mock = DailyWeatherMock.create(state: "thunderstorm")
    let viewModel = DetailedDailyWeatherViewModel(model: mock)
    XCTAssert(viewModel.image.isEqualToImage(UIImage(named: ImageNames.Storm)!))
  }
}
