import UIKit

final class WeatherViewController: UITableViewController {
  var weeklyWeatherViewModel: WeeklyWeatherViewModel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.reloadData()
  }
  
  func reloadData() {
    Dip.weatherAPI.getDailyWeather { weather, error in
      if let error = error {
        UIAlertController.showError("NETWORK_ERROR_ALERT_TITLE", "NETWORK_ERROR_ALERT_MESSAGE")
        print("getDailyWeather error: \(error)") // send telemetry instead
        return
      }
      
      self.weeklyWeatherViewModel = WeeklyWeatherViewModel(model: weather!)
      self.tableView.reloadData()
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? DayWeatherViewController, segue.identifier == "showDailyWeatherSegue" {
      if let cell = sender as? DailyWeatherCell,
        let indexPath = self.tableView.indexPath(for: cell) {
          let viewModel = self.weeklyWeatherViewModel.days[indexPath.row]
          destination.dailyWeather = viewModel.model
      }
    }
  }
}

/** UITableViewDataSource */
extension WeatherViewController {
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.weeklyWeatherViewModel != nil ? 7 : 0
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "dailyWeatherCell") as! DailyWeatherCell
    
    let dailyWeatherViewModel = self.weeklyWeatherViewModel.days[indexPath.row]
    cell.setViewModel(viewModel: dailyWeatherViewModel)
    
    return cell
  }
}
