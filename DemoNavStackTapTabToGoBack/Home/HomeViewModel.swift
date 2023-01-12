import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var selectedTab: Tab = .tab1 {
        willSet {
            if selectedTab == newValue {
                subject.send(newValue)
            }
        }
    }

    let subject = PassthroughSubject<Tab, Never>()
}

extension HomeViewModel {
    enum Tab: Int {
        case tab1 = 0
        case tab2 = 1
    }
}
