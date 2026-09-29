// Alphabetizer is a game where players arrange tiles in alphabetical order.
//ContentView arrabges teh other views into a single layout that occupies the entire screen
//"Root view" of the app
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            ScoreView()
            MessageView()
            Spacer()
            WordCanvas()
            Spacer()
            SubmitButton()
        }
        .padding(.top, 50)
    }
}

#Preview {
    ContentView()
        .environment(Alphabetizer())
}
