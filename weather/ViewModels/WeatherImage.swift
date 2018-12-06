import Foundation
import UIKit

public class WeatherImage {
  static func image(weatherState: WeatherState) -> UIImage {
    switch weatherState {
    case WeatherState.Cloudy: return UIImage(named: ImageNames.Cloudy)!
    case WeatherState.Rain: return UIImage(named: ImageNames.Rain)!
    case WeatherState.Thunderstorm: return UIImage(named: ImageNames.Storm)!
    case WeatherState.Sunny: return UIImage(named: ImageNames.Sun)!
    }
  }
}
