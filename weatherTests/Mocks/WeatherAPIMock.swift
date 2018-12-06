//
//  WeatherAPIMock.swift
//  weatherTests
//
//  Created by Izik Lisbon on 12/5/18.
//  Copyright © 2018 grab. All rights reserved.
//

import Foundation

class MethodMock {
  var count: Int = 0
}

class GetDailyWeatherMock: MethodMock { }

class WeatherAPIImp: WeatherAPI {
  private let getDailyWeatherMock: GetDailyWeatherMock = GetDailyWeatherMock()
  
  func getDailyWeather(completion: @escaping (_ Weather: Weather?, _ error: Error?) -> Void) {
    getDailyWeatherMock.count += 1
  }
}
