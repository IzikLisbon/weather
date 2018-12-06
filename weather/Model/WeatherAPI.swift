import Foundation
import Alamofire

enum WeatherAPIErrors: Error {
  case NoData
  case BadArgument
}

protocol WeatherAPI {
  func getDailyWeather(completion: @escaping (_ Weather: Weather?, _ error: Error?) -> Void)
}
