import Foundation
import UIKit

class DetailedDailyWeatherViewModel {
  let humidity: String
  let feelsLike: String
  let image: UIImage
  let temparture: String
  let model: DailyWeather
  let day: String
  
  init(model: DailyWeather) {
    self.humidity = model.humidity + "%"
    self.feelsLike = model.feelsLike + Constants.Degree
    self.temparture = model.temparture + Constants.Degree
    self.image = WeatherImage.image(weatherState: model.state)
    self.day = Days.localize(model.day)
    self.model = model
  }
}
