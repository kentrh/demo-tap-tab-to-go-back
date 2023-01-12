import SwiftUI

struct OneView: View {
    let text: String
    var body: some View {
        VStack {
            Text("One View")
            Text(text)
        }
    }
}

struct OneView_Previews: PreviewProvider {
    static var previews: some View {
        OneView(text: "One View")
    }
}
