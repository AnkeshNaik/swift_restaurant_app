import Foundation
import SwiftUI

class WalkThroughThreeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
}
