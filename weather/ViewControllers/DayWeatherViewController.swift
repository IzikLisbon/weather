import Foundation
import UIKit

class DayWeatherViewController: UIViewController {
  @IBOutlet var imageView: UIImageView!
  @IBOutlet var temperatureLabel: UILabel!
  @IBOutlet var humadityLabel: UILabel!
  @IBOutlet var feelsLikeLabel: UILabel!
  
  var dailyWeather: DailyWeather!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let viewModel = DetailedDailyWeatherViewModel(model: self.dailyWeather)
    
    self.temperatureLabel.text = viewModel.temparture
    self.humadityLabel.text = viewModel.humidity
    self.imageView.image = viewModel.image
    self.feelsLikeLabel.text = viewModel.feelsLike
  }
}
