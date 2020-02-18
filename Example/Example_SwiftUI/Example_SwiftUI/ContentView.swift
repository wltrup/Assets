import SwiftUI
import Assets

struct ContentView: View {
    var body: some View {
        Button(action: {}) {
            Assets.systemImage(.doneButton)
            Text(Assets.string(.exampleText))
                .font(Assets.font(.someLabelFont))
        }
        .font(Assets.font(.someButtonFont))
        .foregroundColor(Assets.color(.foreground))
        .padding(25)
        .background(Assets.color(.backgroundExampleView))
        .cornerRadius(15)
        .padding(80)
        .background(Assets.color(.backgroundMainView))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
