import Foundation
import Alamofire

enum JSONDecoderError: Error {
  case NoData
}

extension JSONDecoder {
  func decodeResponse<T: Decodable>(from response: DataResponse<Data>) -> Result<T> {
    guard response.error == nil else {
      return .failure(response.error!)
    }
    
    guard let responseData = response.data else {
      return .failure(JSONDecoderError.NoData)
    }
    
    do {
      let item = try decode(T.self, from: responseData)
      return .success(item)
    } catch {
      return .failure(error)
    }
  }
}
