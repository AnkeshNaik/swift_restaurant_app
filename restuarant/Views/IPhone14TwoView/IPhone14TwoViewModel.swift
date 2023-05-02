import Foundation
import SwiftUI

class IPhone14TwoViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var framefiftyonePicker1: String = "Option 1"
    @Published var framefiftyonePicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
