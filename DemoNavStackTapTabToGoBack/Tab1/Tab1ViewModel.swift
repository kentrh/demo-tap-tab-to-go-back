import Foundation

class Tab1ViewModel: ObservableObject {
    @Published var path: [Route] = []

    func tabBarTapped() {
        if path.count > 0 {
            path.removeAll()
        }
    }
}

extension Tab1ViewModel {
    enum Route: Hashable {
        case viewOne(String)
        case viewTwo(String)
    }
}
