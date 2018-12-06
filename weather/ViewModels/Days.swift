import Foundation

class Days {
  static func localize(_ day: Day) -> String {
    switch day {
    case .Monday: return NSLocalizedString("Monday", comment: "")
    case .Tuesday: return NSLocalizedString("Tuesday", comment: "")
    case .Wednesday: return NSLocalizedString("Wednesday", comment: "")
    case .Thursday: return NSLocalizedString("Thursday", comment: "")
    case .Friday: return NSLocalizedString("Friday", comment: "")
    case .Saturday: return NSLocalizedString("Saturday", comment: "")
    case .Sunday: return NSLocalizedString("Sunday", comment: "")
    }
  }
}
