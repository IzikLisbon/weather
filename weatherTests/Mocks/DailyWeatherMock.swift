//
//  DailyWeatherMock.swift
//  weatherTests
//
//  Created by Izik Lisbon on 12/5/18.
//  Copyright © 2018 grab. All rights reserved.
//

import Foundation

class DailyWeatherMock {
  static func create(temp: Int = 70,
                     humidity: Int = 80,
                     feelsLike: Int = 80,
                     state: String = "rain",
                     day: Day? = .Monday) -> DailyWeather {
    let singleDayWeather = try! JSONDecoder().decode(DailyWeather.self, from: """
      {
      "temp":"\(temp)",
      "humidity":"\(humidity)",
      "feels-like":"\(feelsLike)",
      "state":"\(state)"
      }
      """.data(using: .utf8)!)
    
    if let day = day {
      singleDayWeather.day = day
    }
    
    return singleDayWeather
  }
}
