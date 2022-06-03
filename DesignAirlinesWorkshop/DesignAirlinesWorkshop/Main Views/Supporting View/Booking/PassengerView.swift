import SwiftUI

struct PassengerView: View {
    let value: String
    
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(Color.baseDarkBlue,lineWidth: 2)
                .frame(width: 40, height: 40)
            Text(value).custom(font: .ultralight, size: 24)
        }
    }
}

struct PassengerView_Previews: PreviewProvider {
    static var previews: some View {
        PassengerView(value: "1")
    }
}
