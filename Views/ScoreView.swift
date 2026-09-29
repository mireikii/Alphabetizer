// Eaxh tile displays a word on the front and a checkmark at the back
import SwiftUI

struct ScoreView: View {
    @Environment(Alphabetizer.self) private var alphabetizer
    var body: some View {
        Text("Score: \(alphabetizer.score)")
            .font(.largeTitle)
            .foregroundStyle(Color.purple)
            .bold()
    }
}

#Preview {
    ScoreView()
}
