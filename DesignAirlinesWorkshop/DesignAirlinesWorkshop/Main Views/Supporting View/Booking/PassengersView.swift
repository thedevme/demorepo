import SwiftUI

struct PassengersView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("PASSENGERS")
                        .custom(font: .bold, size: 14)
                        .foregroundColor(.baseLightBlue)
                }
                
                HStack {
                    ForEach(0..<7) { index in
                        PassengerView(value: "\(index+1)")
                        if index != 6 { Spacer() }
                    }
                }
            }
        }
    }
}

struct PassengersView_Previews: PreviewProvider {
    static var previews: some View {
        PassengersView()
    }
}
