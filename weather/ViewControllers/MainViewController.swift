import Foundation
import UIKit

class MainViewController: UIViewController {
  let delayInSeconds = 3
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let navigationController = self.createNavigationViewController()
    self.warmupWeatherViewController(navigationController)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(delayInSeconds)) {
      self.show(navigationController, sender: self)
    }
  }
  
  private func createNavigationViewController() -> UINavigationController {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController = storyboard.instantiateViewController(withIdentifier: "weatherNavigationController")
    return viewController as! UINavigationController
  }
  
  private func warmupWeatherViewController(_ navigationController: UINavigationController) {
    // calling view to invoke viewDidLoad
    _ = navigationController.viewControllers[0].view
  }
}
