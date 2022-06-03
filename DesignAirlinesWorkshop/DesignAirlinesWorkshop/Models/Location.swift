import Foundation
import Combine

struct Location: Decodable, Identifiable {
    var id: Int
    var code: String
    var name: String
    var state: String
    var city: String
    
    static let `default` = Self(id: 0, code: "LAX", name: "Airport Name Here", state: "California", city: "Los Angeles")
}
