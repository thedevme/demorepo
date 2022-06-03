import SwiftUI

struct BookingView: View {
    let fromLocation: Location = Location.init(id: 0, code: "LAX", name: "LAX Airport", state: "California", city: "Los Angeles")
    let toLocation: Location = Location.init(id: 0, code: "SFO", name: "San Francisco Airport", state: "California", city: "San Francisco")
    
    var body: some View {
        ZStack {
            Color(.baseWhite).edgesIgnoringSafeArea(.bottom)
            VStack(spacing: 0) {
                VStack(spacing: 0) {
                    BookingNavView()
                    SubmenuView()
                }
                
                ScrollView {
                    ZStack {
                        content
                    }
                }
                
                findFlightsButton.padding(.bottom, 5)
            }
        }
    }
    
    var content: some View {
        VStack(spacing: 20) {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
                
                VStack {
                    DestinationView(title: "FROM", location: fromLocation)
                    Spacer()
                    DestinationView(title: "TO", location: toLocation).offset(y: 20)
                }
                .padding(.horizontal)
                
                VStack(spacing: 60) {
                    VStack {
                        ZStack {
                            DotView(color: .baseDarkBlue)
                            Image(systemName: "airplane")
                                .rotationEffect(.degrees(90))
                                .font(.system(size: 36, weight: .regular))
                        }
                        Rectangle()
                            .frame(width: 1.5, height: 60)
                    }
                    
                    VStack {
                        Rectangle()
                            .frame(width: 1.5, height: 60)
                        DotView(color: .baseDarkBlue)
                    }
                }
                
                VStack(spacing: 0) {
                    ZStack {
                        Circle().frame(width: 30, height: 30)
                        Image(systemName: "arrow.up.arrow.down")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                    }
                    HStack(spacing: 0) {
                        Text("ROUND").custom(font: .bold, size: 12)
                        Text("TRIP").custom(font: .regular, size: 12)
                    }
                }
            }.padding(.top, 20)

            DatesView().padding(.horizontal)
            VStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.baseDarkBlue)
                
                HStack {
                    Text("+").font(.system(size: 22, weight: .heavy)).padding(.bottom, 4)
                    Text("MORE FLIGHTS").custom(font: .bold, size: 14)
                    Spacer()
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.baseDarkBlue)
            }.padding(.horizontal, 20)
            
            PassengersView().padding(.horizontal)
        }
    }
    
    var findFlightsButton: some View {
        Group {
            HStack {
                Button(action: {}) {
                    NavigationLink(destination: SelectFareView()) {
                        HStack {
                            Spacer()
                            Text("FIND FLIGHTS")
                                .custom(font: .heavy, size: 29)
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 29, weight: .regular))
                            Spacer()
                        }
                        .padding()
                        .background(Color.baseLightBlue)
                        .cornerRadius(10)
                    }
                    
                }
            }.padding(.horizontal, 10)
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BookingView()
        }
    }
}
