import SwiftUI

struct SeatButtonView: View {
    @State private var isChecked = false
    var data: Seat
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        ZStack {
            if randomBool() {
                Image("seat-unavailable")
                    .resizable()
                    .frame(width: width, height: height)
            } else {
                available
                    .frame(width: width, height: height)
            }
        }
    }
    
    var available: some View {
        ZStack {
            Button(action: {
                isChecked.toggle()
            }) {
                Toggle("Selected", isOn: $isChecked)
            }
            .buttonStyle(PlainButtonStyle())
            .toggleStyle(SeatToggleStyle(width: width, height: height))
            
            Text("\(data.seat)")
                .foregroundColor(.white)
                .custom(font: .heavy, size: 13)
                .offset(y: 8)
        }
    }
    
    func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
}

struct SeatButtonView_Previews: PreviewProvider {
    static var previews: some View {
        //
        SeatButtonView(data: Seat(row: 0, seat: "A"), width: 37, height: 37)
    }
}
