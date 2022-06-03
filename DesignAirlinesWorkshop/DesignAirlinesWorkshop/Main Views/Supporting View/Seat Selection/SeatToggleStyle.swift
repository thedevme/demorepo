import SwiftUI

struct SeatToggleStyle: ToggleStyle {
    var width: CGFloat
    var height: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label.hidden()
            Image(configuration.isOn ? "seat-selected" : "seat-available")
                .resizable()
                .frame(width: width, height: height)
        }
        
    }
}
