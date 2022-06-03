import SwiftUI

struct DatesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("DEPART")
                                .custom(font: .bold, size: 14)
                                .foregroundColor(.baseLightBlue)
                            Text("Thu, June 21")
                                .custom(font: .regular, size: 18)
                        }
                        
                        // toggle spacer and VStack
                        Spacer()
                        Image(systemName: "calendar").font(.system(size: 22, weight: .bold))
                        Spacer()
    
                        VStack(alignment: .trailing) {
                            Text("RETURN")
                                .custom(font: .bold, size: 14)
                                .foregroundColor(.baseLightBlue)
                            Text("Thu, June 21")
                                .custom(font: .regular, size: 18)
                        }
                    }
                }
                .padding(.vertical, 10)
                
                Spacer()
            }
            
            Spacer()
            
        }
    }
}

struct DatesView_Previews: PreviewProvider {
    static var previews: some View {
        DatesView()
    }
}
