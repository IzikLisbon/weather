import Foundation

class DailyWeatherViewModel {
  let day: String
  let temparture: String
  let model: DailyWeather
  
  public init(model: DailyWeather) {
    self.model = model
    self.day = Days.localize(model.day)
    self.temparture = model.temparture + Constants.Degree
  }
}
