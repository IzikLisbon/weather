import Foundation

class Weather: Codable {
  var weeklyWeather: WeeklyWeather
  
  enum CodingKeys: String, CodingKey {
    case weeklyWeather = "weather"
  }
}
