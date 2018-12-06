import Foundation
import Alamofire

class WeatherAPIImp: WeatherAPI {
  let jsonDecoder: JSONDecoder
  
  init() {
    self.jsonDecoder = JSONDecoder()
  }
  
  func getDailyWeather(completion: @escaping (_ Weather: Weather?, _ error: Error?) -> Void) {
    Alamofire
      .request("https://serve-json-simple-ampjvepr5wjb.runkit.sh/weather.json")
      .validate(statusCode: 200..<300)
      .responseData { res in
        let decodedResponse: Result<Weather> = self.jsonDecoder.decodeResponse(from: res)
        completion(decodedResponse.value, decodedResponse.error)
    }
  }
}
