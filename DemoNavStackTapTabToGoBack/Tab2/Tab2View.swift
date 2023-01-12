import SwiftUI
import Combine

struct Tab2View: View {
    @StateObject var viewModel: Tab2ViewModel = .init()
    let subject: PassthroughSubject<HomeViewModel.Tab, Never>

    var body: some View {
        NavigationStack(path: $viewModel.path) {
            List {
                NavigationLink(value: Tab2ViewModel.Route.viewOne("From tab 2")) {
                    Text("Go deeper to OneView")
                }
                NavigationLink(value: Tab2ViewModel.Route.viewTwo("From tab 2")) {
                    Text("Go deeper to TwoView")
                }
            }
            .navigationTitle("Tab 2")
            .navigationDestination(for: Tab2ViewModel.Route.self, destination: { route in
                switch route {
                case let .viewOne(text):
                    OneView(text: text)
                case let .viewTwo(text):
                    TwoView(text: text)
                }
            })
            .onReceive(subject) { tab in
                if case .tab2 = tab { viewModel.tabBarTapped() }
            }
        }
    }
}

struct Tab2View_Previews: PreviewProvider {
    static var previews: some View {
        Tab2View(subject: .init())
    }
}
