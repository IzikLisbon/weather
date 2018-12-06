import XCTest
@testable import weather

class WeatherImageTests: XCTestCase {
  func testRainImage() {
    let actual = WeatherImage.image(weatherState: WeatherState.Rain)
    let expected = UIImage(named: ImageNames.Rain)!
    XCTAssert(actual.isEqualToImage(expected))
  }
  
  func testCloudyImage() {
    let actual = WeatherImage.image(weatherState: WeatherState.Cloudy)
    let expected = UIImage(named: ImageNames.Cloudy)!
    XCTAssert(actual.isEqualToImage(expected))
  }
  
  func testSunnyImage() {
    let actual = WeatherImage.image(weatherState: WeatherState.Sunny)
    let expected = UIImage(named: ImageNames.Sun)!
    XCTAssert(actual.isEqualToImage(expected))
  }
  
  func testStormyImage() {
    let actual = WeatherImage.image(weatherState: WeatherState.Thunderstorm)
    let expected = UIImage(named: ImageNames.Storm)!
    XCTAssert(actual.isEqualToImage(expected))
  }
}
