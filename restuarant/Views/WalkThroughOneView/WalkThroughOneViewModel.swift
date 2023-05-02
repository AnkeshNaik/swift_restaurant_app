import Foundation
import SwiftUI

class WalkThroughOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
}
