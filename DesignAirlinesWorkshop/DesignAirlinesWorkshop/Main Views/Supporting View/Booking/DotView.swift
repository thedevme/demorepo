import SwiftUI

struct DotView: View {
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .opacity(0.10)
                .frame(width: 18)
            
            Circle()
                .foregroundColor(color)
                .opacity(0.30)
                .frame(width: 10)
            
            Circle()
                .foregroundColor(color)
                .opacity(1)
                .frame(width: 6)
        }
        .frame(height: 20)
    }
}

struct DotView_Previews: PreviewProvider {
    static var previews: some View {
        DotView(color: .baseLightBlue)
    }
}
