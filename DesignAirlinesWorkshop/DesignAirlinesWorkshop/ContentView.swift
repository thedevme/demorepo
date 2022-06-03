import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            BookingView()
                .navigationBarTitle("Back", displayMode: .inline)
                .navigationBarHidden(true)
        }.preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
