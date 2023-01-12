import SwiftUI

struct TwoView: View {
    let text: String
    var body: some View {
        VStack {
            Text("Two view")
            Text(text)
        }
    }
}

struct TwoView_Previews: PreviewProvider {
    static var previews: some View {
        TwoView(text: "Two View")
    }
}
