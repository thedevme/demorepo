import SwiftUI

struct BookingNavView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            Rectangle().fill(Color.baseLightBlue)
                .edgesIgnoringSafeArea(.top)
            
            VStack(spacing: -8) {
                Text("BOOK YOUR FLIGHT").custom(font: .heavy, size: 29)
                Text("WHERE WOULD YOU WANT TO GO?").custom(font: .medium, size: 12)
            }
            .foregroundColor(.white)
        }.frame(height: 54)
    }
}

struct BookingNavView_Previews: PreviewProvider {
    static var previews: some View {
        BookingNavView()
    }
}
