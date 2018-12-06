import Foundation

class DailyWeather: Codable {
  var temparture: String
  var humidity: String
  var feelsLike: String
  var state: WeatherState
  var day: Day!
  
  enum CodingKeys: String, CodingKey {
    case temparture = "temp"
    case humidity
    case feelsLike = "feels-like"
    case state
  }
}

enum WeatherState: String, Codable {
  case Rain = "rain"
  case Sunny = "sunny"
  case Thunderstorm = "thunderstorm"
  case Cloudy = "cloudy"
}

public enum Day {
  case Monday
  case Tuesday
  case Wednesday
  case Thursday
  case Friday
  case Saturday
  case Sunday
}
