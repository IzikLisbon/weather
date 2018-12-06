//
//  DataResponseMockFactory.swift
//  weatherTests
//
//  Created by Izik Lisbon on 12/5/18.
//  Copyright © 2018 grab. All rights reserved.
//

import Foundation
import Alamofire

class DataResponseMockFactory {
  static public func withDummyError() -> DataResponse<Data> {
    let result = Result<Data>.failure(TestError.dummy)
    return DataResponse<Data>(request: nil, response: nil, data: nil, result: result)
  }
  
  static public func withJson(json: String) -> DataResponse<Data> {
    let jsonData = json.data(using: .utf8)!
    let result = Result<Data>.success(jsonData)
    return DataResponse<Data>(request: nil, response: nil, data: jsonData, result: result)
  }
  
  static public func withNoData() -> DataResponse<Data> {
    let result = Result<Data>.success("".data(using: .utf8 )!)
    return DataResponse<Data>(request: nil, response: nil, data: nil, result: result)
  }
}
