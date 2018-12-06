import Foundation

class WeeklyWeather: Codable {
  var mon: DailyWeather
  var tue: DailyWeather
  var wed: DailyWeather
  var thu: DailyWeather
  var fri: DailyWeather
  var sat: DailyWeather
  var sun: DailyWeather
  
  enum CodingKeys: String, CodingKey {
    case mon, tue, wed, thu, fri, sat, sun
  }
  
  required public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    mon = try values.decode(DailyWeather.self, forKey: .mon)
    tue = try values.decode(DailyWeather.self, forKey: .tue)
    wed = try values.decode(DailyWeather.self, forKey: .wed)
    thu = try values.decode(DailyWeather.self, forKey: .thu)
    fri = try values.decode(DailyWeather.self, forKey: .fri)
    sat = try values.decode(DailyWeather.self, forKey: .sat)
    sun = try values.decode(DailyWeather.self, forKey: .sun)
    
    mon.day = .Monday
    tue.day = .Tuesday
    wed.day = .Wednesday
    thu.day = .Thursday
    fri.day = .Friday
    sat.day = .Saturday
    sun.day = .Sunday
    
  }
}
