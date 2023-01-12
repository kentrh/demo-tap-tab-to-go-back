import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel = .init()

    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            Tab1View(subject: viewModel.subject)
                .tag(HomeViewModel.Tab.tab1)
                .tabItem {
                    Label("Tab 1", systemImage: "1.lane")
                    Text("Tab 1", comment: "Tab bar title")
                }

            Tab2View(subject: viewModel.subject)
                .tag(HomeViewModel.Tab.tab2)
                .tabItem {
                    Label("Tab 2", systemImage: "2.lane")
                    Text("Tab 2", comment: "Tab bar title")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
