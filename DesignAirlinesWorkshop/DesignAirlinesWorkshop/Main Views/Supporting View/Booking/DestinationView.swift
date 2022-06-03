import SwiftUI

struct DestinationView: View {
    
    var title: String
    var location: Location
    
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading) {
                Text(title)
                    .custom(font: .bold, size: 42)
                    .opacity(0.10)
                
                VStack(alignment: .leading, spacing: -10) {
                    Text(location.city).custom(font: .bold, size: 22)
                    Text(location.state.uppercased()).custom(font: .ultralight, size: 20)
                }
                .offset(y: -34)
            }
            
            Spacer()
            
            HStack {
                Image(systemName: "cloud.drizzle").font(.system(size: 29, weight: .light))
                Text("87°F").custom(font: .regular, size: 26)
            }
            .offset(y: 23)
        }
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(title: "FROM", location: Location.default)
    }
}
