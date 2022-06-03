import SwiftUI

enum SeatSection: String {
    case business
    case comfort
    case main
}

struct AirplaneSeatSection: View {
    let title: String
    let seatWidth: CGFloat
    let seatHeight: CGFloat
    let type: SeatSection
    
    var businessClassRows = Array(1...5)
    var comfortPlusRows = Array(6...8)
    var mainRows = Array(9...14)
    
    var seatRows: [String] = ["A", "B", "C", "D", "E", "F"]
    
    let businessClassGrid = [
            GridItem(.fixed(37.0), spacing: 15.0, alignment: .top),
            GridItem(.fixed(37.0), spacing: 60.0, alignment: .top),
            GridItem(.fixed(37.0), spacing: 15.0, alignment: .top),
            GridItem(.fixed(37.0), spacing: 15.0, alignment: .top)
    ]
    
    let comfortPlusGrid = [
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 37.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top),
            GridItem(.fixed(27.0), spacing: 9.0, alignment: .top)
    ]
    
    var body: some View {
        VStack {
            SeatRowHeader(header: title)
            ZStack {
                VStack(alignment: .center ,spacing: 20) {
                    if type == SeatSection.business  {
                        business
                    } else if type == SeatSection.comfort {
                        comfort
                    } else if type == SeatSection.main {
                        main
                    }
                }
            }
        }
        .frame(width: 250)
    }
    
    var comfort: some View {
        ZStack {
            LazyVGrid(columns: comfortPlusGrid, alignment: .center, spacing: 20) {
                ForEach(0 ..< comfortPlusRows.count*6) { item in
                    SeatButtonView(data: Seat(row: Int(item % 6) + 1, seat: "\(seatRows[item % 6])"), width: 27, height: 37)
                }
            }
            
            VStack(alignment: .center ,spacing: 20) {
                ForEach(0..<comfortPlusRows.count) { index in
                    VStack {
                        Spacer()
                        Text("\(comfortPlusRows[index])")
                            .custom(font: .heavy, size: 18)
                            .foregroundColor(.white)
                    }
                    .frame(height: 37)
                }
            }
        }
    }
    
    var main: some View {
        ZStack {
            LazyVGrid(columns: comfortPlusGrid, alignment: .center, spacing: 9) {
                ForEach(0 ..< mainRows.count*6) { item in
                    SeatButtonView(data: Seat(row: Int(item % 6) + 1, seat: "\(seatRows[item % 6])"), width: 27, height: 37)
                }
            }
            
            VStack(alignment: .center ,spacing: 9) {
                ForEach(0..<mainRows.count) { index in
                    VStack {
                        Spacer()
                        Text("\(mainRows[index])")
                            .custom(font: .heavy, size: 18)
                            .foregroundColor(.white)
                    }
                    .frame(height: 37)
                }
            }
        }
    }
    
    var business: some View {
        ZStack {
            LazyVGrid(columns: businessClassGrid, alignment: .center, spacing: 20) {
                ForEach(0 ..< 20) { item in
                    SeatButtonView(data: Seat(row: Int(item % 4) + 1, seat: "\(seatRows[item % 4])"), width: 37, height: 37)
                }
            }
            
            VStack(alignment: .center ,spacing: 20) {
                ForEach(0..<businessClassRows.count) { index in
                    VStack {
                        Spacer()
                        Text("\(businessClassRows[index])")
                            .custom(font: .heavy, size: 18)
                            .foregroundColor(.white)
                    }
                    .frame(height: 37)
                }
            }
        }
    }
}

struct AirplaneSeatSection_Previews: PreviewProvider {
    static var previews: some View {
        AirplaneSeatSection(title: "Business", seatWidth: 37, seatHeight: 37, type: .business)
    }
}
