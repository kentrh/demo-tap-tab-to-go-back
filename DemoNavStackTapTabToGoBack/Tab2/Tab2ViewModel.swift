import Foundation

class Tab2ViewModel: ObservableObject {
    @Published var path: [Route] = []

    func tabBarTapped() {
        if path.count > 0 {
            path.removeAll()
        }
    }
}

extension Tab2ViewModel {
    enum Route: Hashable {
        case viewOne(String)
        case viewTwo(String)
    }
}
