import Foundation
import Alamofire
import XCTest
@testable import weather

enum TestError: Error { case dummy }

class DecodableObject: Decodable {
  var someProp: String
  static let validJson = "{ \"someProp\": \"someValue\"}"
}

class JSONDecoderTests: XCTestCase {
  
  func testErrorIsForwarded() {
    let response = DataResponseMockFactory.withDummyError()
    let res: Result<DecodableObject> = JSONDecoder().decodeResponse(from: response)
    XCTAssertEqual(res.error.debugDescription, "Optional(weatherTests.TestError.dummy)")
  }
  
  func testNoData() {
    let response = DataResponseMockFactory.withNoData()
    let res: Result<DecodableObject> = JSONDecoder().decodeResponse(from: response)
    XCTAssertEqual(res.error.debugDescription, "Optional(weatherTests.JSONDecoderError.NoData)")
  }
  
  func testDecodingSucceeded() {
    let success = DataResponseMockFactory.withJson(json: DecodableObject.validJson)
    let res: Result<DecodableObject> = JSONDecoder().decodeResponse(from: success)
    XCTAssertNil(res.error)
    XCTAssertNotNil(res.value?.someProp)
  }
  
  func testDecodingFailure() {
    let invalidJsonResponse = DataResponseMockFactory.withJson(json: "{INVALID-JSON}")
    let res: Result<DecodableObject> = JSONDecoder().decodeResponse(from: invalidJsonResponse)
    
    let isDecodingError = res.error.debugDescription.range(of: "DecodingErro") != nil
    XCTAssertTrue(isDecodingError)
  }
}
