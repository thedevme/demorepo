import SwiftUI

struct SubmenuView: View {
    var body: some View {
        HStack {
            Group {
                Spacer()
                SubmenuItemView(first: "ONE", last: "WAY", icon: "arrow.right")
            }
            spacer
            SubmenuItemView(first: "ROUND", last: "TRIP", icon: "arrow.right.arrow.left")
                .foregroundColor(.baseLightBlue)
            spacer
            Group {
                SubmenuItemView(first: "MULTI", last: "CITY", icon: "arrow.triangle.2.circlepath")
                Spacer()
            }
        }
        .frame(height: 50)
        .background(Color.white)
    }
    
    var spacer: some View {
        Group {
            Spacer()
            
            Divider()
                .frame(height: 22)
                .background(Color.black)
            
            Spacer()
        }
    }
}

struct SubmenuItemView: View {
    let first: String
    let last: String
    let icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            HStack(spacing: 0) {
                Text(first).custom(font: .bold, size: 14)
                Text(last).custom(font: .regular, size: 14)
            }
        }
    }
}

struct SubMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SubmenuView()
    }
}
