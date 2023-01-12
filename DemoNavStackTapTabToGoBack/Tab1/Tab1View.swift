import SwiftUI
import Combine

struct Tab1View: View {
    @StateObject var viewModel: Tab1ViewModel = .init()
    let subject: PassthroughSubject<HomeViewModel.Tab, Never>

    var body: some View {
        NavigationStack(path: $viewModel.path) {
            List {
                NavigationLink(value: Tab1ViewModel.Route.viewOne("From tab 1")) {
                    Text("Go deeper to OneView")
                }
                NavigationLink(value: Tab1ViewModel.Route.viewTwo("From tab 1")) {
                    Text("Go deeper to TwoView")
                }
            }
            .navigationTitle("Tab 1")
            .navigationDestination(for: Tab1ViewModel.Route.self, destination: { route in
                switch route {
                case let .viewOne(text):
                    OneView(text: text)
                case let .viewTwo(text):
                    TwoView(text: text)
                }
            })
            .onReceive(subject) { tab in
                if case .tab1 = tab { viewModel.tabBarTapped() }
            }
        }
    }
}

struct Tab1View_Previews: PreviewProvider {
    static var previews: some View {
        Tab1View(subject: .init())
    }
}
