//
//  WeeklyWeatherMock.swift
//  weatherTests
//
//  Created by Izik Lisbon on 12/5/18.
//  Copyright © 2018 grab. All rights reserved.
//

import Foundation

class WeatherMock {
  public static let ValidWeatherJSON = """
      {
       "weather":{
          "mon":{
             "temp":"70",
             "humidity":"80",
             "feels-like":"74",
             "state":"cloudy"
          },
          "tue":{
             "temp":"71",
             "humidity":"81",
             "feels-like":"76",
             "state":"rain"
          },
          "wed":{
             "temp":"72",
             "humidity":"77",
             "feels-like":"76",
             "state":"rain"
          },
          "thu":{
             "temp":"73",
             "humidity":"82",
             "feels-like":"83",
             "state":"sunny"
          },
          "fri":{
             "temp":"74",
             "humidity":"83",
             "feels-like":"84",
             "state":"sunny"
          },
          "sat":{
             "temp":"75",
             "humidity":"84",
             "feels-like":"77",
             "state":"thunderstorm"
          },
          "sun":{
             "temp":"71",
             "humidity":"77",
             "feels-like":"78",
             "state":"rain"
          }
       }
      }
      """
  
  static func create() -> Weather {
    return try! JSONDecoder().decode(Weather.self, from: ValidWeatherJSON.data(using: .utf8)!)
  }
}
