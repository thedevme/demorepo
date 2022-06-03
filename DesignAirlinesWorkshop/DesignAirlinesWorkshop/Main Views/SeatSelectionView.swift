import SwiftUI

struct SeatSelectionView: View {
    
    let coloredNavAppearance = UINavigationBarAppearance()
    
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = UIColor.baseLightBlue
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            
            Color(.baseWhite).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                ScrollView {
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                        
                        VStack {
                            Image("plane-outline")
                        }
                        
                        VStack(spacing: 10) {
                            AirplaneSeatSection(title: "Business Class",
                                                seatWidth: 37,
                                                seatHeight: 37,
                                                type: .business)
                            
                            AirplaneSeatSection(title: "Comfort +",
                                                seatWidth: 27,
                                                seatHeight: 37,
                                                type: .comfort)
                            
                            AirplaneSeatSection(title: "Main",
                                                seatWidth: 27,
                                                seatHeight: 37,
                                                type: .main)
                        }.offset(y: 220)
                    }
                }
                
                Group {
                    HStack {
                        Button(action: {}) {
                            HStack {
                                Spacer()
                                Text("BOOKING COMPLETE")
                                    .custom(font: .heavy, size: 29)
                                Spacer()
                            }
                            .padding()
                            .background(Color.baseLightBlue)
                            .cornerRadius(10)
                        }
                    }.padding(.horizontal, 10)
                }.background(Color.clear)
            }.background(Color.clear)
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("SGN-JFK")
                            .custom(font: .bold, size: 24)
                        Text("Oct 20-24")
                            .custom(font: .bold, size: 14)
                        Text("ROUND TRIP | 2 Passengers")
                            .custom(font: .medium, size: 14)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center, spacing: 0) {
                        Text("LEGEND")
                            .custom(font: .heavy, size: 13)
                        
                        HStack {
                            Image("seat-available")
                            Image("seat-selected")
                            Image("seat-unavailable")
                        }
                        
                        Text("Tap for details")
                            .custom(font: .medium, size: 12)
                    }
                }
                .padding(10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0 ..< 5) { item in
                            passengerCard
                        }
                        passengerCard
                    }
                    .padding(.horizontal, 10)
                    .padding(.bottom, 5)
                }
            }
            .background(Color.white)
            .cornerRadius(10)
            .padding()
            .offset(y: -17)
        
        }
        
    }
    
    var passengerCard: some View {
        VStack(spacing: -5) {
            HStack(spacing: 0) {
                Text("PASSENGER")
                    .custom(font: .heavy, size: 24)
                Text("1")
                    .custom(font: .ultralight, size: 24)
            }
            
            HStack {
                HStack(spacing: -5) {
                    Text("SEAT")
                        .rotationEffect(.degrees(-90))
                        .custom(font: .medium, size: 16)
                    
                    Text("2A")
                        .custom(font: .heavy, size: 38)
                }
                
                Spacer()
                
                HStack {
                    Text("$9999")
                        .custom(font: .heavy, size: 18)
                        .foregroundColor(.white)
                }
                .padding(8)
                .background(Color.baseLightBlue)
                .cornerRadius(6)
            }
            
            Text("BUSINESS CLASS")
                .custom(font: .medium, size: 14)
        }
        .frame(width: 150)
        .padding(5)
        .background(Color.baseMediumGrey)
        .cornerRadius(10)
    }
}

struct SeatSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SeatSelectionView()
    }
}
