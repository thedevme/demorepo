import SwiftUI

struct TicketView: View {
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                VStack {
                    HStack {
                        VStack {
                            Text("Dublin").custom(font: .medium, size: 14)
                            Text("DUB").custom(font: .heavy, size: 36)
                        }
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "airplane")
                            Text("FR5545").custom(font: .bold, size: 14)
                        }
                        
                        Spacer()
                        
                        VStack {
                            Text("Gran Canaria").custom(font: .medium, size: 14)
                            Text("LPA").custom(font: .heavy, size: 36)
                        }
                    }
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: -5) {
                            Text("Flyout").custom(font: .ultralight, size: 16)
                            Text("15:25").custom(font: .demibold, size: 19)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .center, spacing: -5) {
                            Text("Gate Closes").custom(font: .ultralight, size: 16)
                            Text("15:45").custom(font: .demibold, size: 19)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing, spacing: -5) {
                            Text("Date").custom(font: .ultralight, size: 16)
                            Text("18 Sep").custom(font: .demibold, size: 19)
                        }
                    }
                    
                    Divider()
                    
                    HStack(alignment: .top){
                        VStack(alignment: .leading, spacing: -5) {
                            Text("Passenger").custom(font: .ultralight, size: 16)
                            Text("Craig Clayton").custom(font: .demibold, size: 19)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing, spacing: -8) {
                            Text("Seat").custom(font: .medium, size: 14)
                            Text("15B").custom(font: .heavy, size: 36)
                        }
                    }
                    
                    HStack {
                        Spacer()
                        Image("qrcode")
                            .resizable()
                            .frame(width: 194, height: 196)
                    }
                }
            })
            .padding(.vertical)
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(25)
            .shadow(color: Color.black.opacity(0.12), radius: 5, x: 0, y: 5)
            
            Spacer(minLength: 0)
        }
        .contentShape(Rectangle())
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
