import XCTest
@testable import weather

class DailyWeatherTests: XCTestCase {
  func testDays() {
    let jsonData = WeatherMock.ValidWeatherJSON.data(using: .utf8)!
    let weather = try? JSONDecoder().decode(Weather.self, from: jsonData)
    XCTAssertNotNil(weather)
    
    XCTAssertEqual(weather?.weeklyWeather.mon.day, Day.Monday)
    XCTAssertEqual(weather?.weeklyWeather.tue.day, Day.Tuesday)
    XCTAssertEqual(weather?.weeklyWeather.wed.day, Day.Wednesday)
    XCTAssertEqual(weather?.weeklyWeather.thu.day, Day.Thursday)
    XCTAssertEqual(weather?.weeklyWeather.fri.day, Day.Friday)
    XCTAssertEqual(weather?.weeklyWeather.sat.day, Day.Saturday)
    XCTAssertEqual(weather?.weeklyWeather.sun.day, Day.Sunday)
  }
}
