import SwiftUI

struct CardSummaryView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("$999").custom(font: .bold, size: 42)
            
            VStack(alignment: .leading) {
                Text("Basic Economy").custom(font: .bold, size: 18)
                Text("Cabin: Economy").custom(font: .regular, size: 14)
            }
           
            Spacer()
            
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Image(systemName: "xmark")
                    Text("Seat Choice").custom(font: .regular, size: 14)
                }
                
                HStack {
                    Image(systemName: "xmark")
                    Text("Cancellation").custom(font: .regular, size: 14)
                }
                
                HStack {
                    Image(systemName: "xmark")
                    Text("Changes").custom(font: .regular, size: 14)
                }
                
                HStack {
                    Image(systemName: "checkmark")
                    Text("Seat Choice").custom(font: .regular, size: 14)
                }
            }
            
            Spacer()
            Rectangle()
                .fill(Color.baseWhite)
                .frame(height: 1)
                .padding(.vertical, 10)
            
            VStack {
                HStack {
                    Text("Carry-on:")
                    Spacer()
                    Text("Included")
                }
                
                HStack {
                    Text("1st checked bag:")
                    Spacer()
                    Text("$60 up to 50 lbs")
                }
                
                HStack {
                    Text("2nd checked bag:")
                    Spacer()
                    Text("$80 up to 50 lbs")
                }
            }.custom(font: .regular, size: 14)
        }
        .padding()
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.baseDarkBlue, lineWidth: 3)
        )
    }
}

struct CardSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        CardSummaryView()
    }
}
