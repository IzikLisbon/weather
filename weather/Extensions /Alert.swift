import Foundation
import UIKit

extension UIAlertController {
  static func showError(_ title: String, _ message: String) {
    let alert = UIAlertController(title: NSLocalizedString(title, comment: ""),
                                  message: NSLocalizedString(message, comment: ""),
                                  preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
    alert.presentInOwnWindow(animated: true, completion: nil)
  }
  
  func presentInOwnWindow(animated: Bool, completion: (() -> Void)?) {
    let alertWindow = UIWindow(frame: UIScreen.main.bounds)
    alertWindow.rootViewController = UIViewController()
    alertWindow.windowLevel = UIWindow.Level.alert + 1
    alertWindow.makeKeyAndVisible()
    alertWindow.rootViewController?.present(self, animated: animated, completion: completion)
  }
}
