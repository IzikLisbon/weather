import Foundation

class WeeklyWeatherViewModel {
  let days: [DailyWeatherViewModel]
  let model: WeeklyWeather
  
  public init(model: Weather) {
    self.model = model.weeklyWeather
    self.days = [
      DailyWeatherViewModel(model: model.weeklyWeather.mon),
      DailyWeatherViewModel(model: model.weeklyWeather.tue),
      DailyWeatherViewModel(model: model.weeklyWeather.wed),
      DailyWeatherViewModel(model: model.weeklyWeather.thu),
      DailyWeatherViewModel(model: model.weeklyWeather.fri),
      DailyWeatherViewModel(model: model.weeklyWeather.sat),
      DailyWeatherViewModel(model: model.weeklyWeather.sun)
    ]
  }
}
