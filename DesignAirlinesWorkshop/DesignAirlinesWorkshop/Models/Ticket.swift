import SwiftUI

struct Ticket: Identifiable {
    
    var id: Int
    var position: Int
    var offset : CGFloat
    var name: String
    var flyoutTime: String
    var gateCloseTime: String
    var date: String
    var seat: String
    var flightNumber: String
    var location: Location
    
    static let `default` = Self(id: 0,
                                position: 1,
                                  offset: 0,
                                  name: "Craig Clayton",
                                  flyoutTime: "15:25",
                                  gateCloseTime: "15:45",
                                  date: "21 Oct",
                                  seat: "3A",
                                  flightNumber: "FR2243",
                                  location: Location.default)
}
