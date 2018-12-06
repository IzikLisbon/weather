import Foundation
import UIKit

class DailyWeatherCell: UITableViewCell {
  public var viewModel: DailyWeatherViewModel!
  
  public func setViewModel(viewModel: DailyWeatherViewModel) {
    self.viewModel = viewModel
    self.textLabel!.text = viewModel.day
    self.detailTextLabel!.text = viewModel.temparture
  }
}
