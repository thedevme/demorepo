import SwiftUI

struct TripSummaryView: View {
    var step: String
    
    var body: some View {
        VStack {
            HStack(spacing: 4) {
                Text("Select Flight:")
                    .custom(font: .regular, size: 14)
                Text("\(step) of 3")
                    .custom(font: .heavy, size: 14)
            }
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: -10) {
                    Text("SGN - JFK")
                        .custom(font: .heavy, size: 24)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Wed, 21 Oct, 2020")
                        .custom(font: .regular, size: 14)
                    Text("2 Passengers")
                        .custom(font: .regular, size: 14)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal, 10)
    }
}

struct TripSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        TripSummaryView(step: "1")
    }
}
