import Foundation

struct Light: Identifiable {
    
    enum Brand: String {
        case profoto = "Profoto"
        case speedotron = "Speedotron"
    }
    
    // basic
    let id: Int
    let name: String
    let description: String
    let brand: Brand
    let iconImage: String
    let image: String

    // specs
    let productNumber: String
    let maxEnergy: String
    let energyRange: String
    let recyclingTime: String
    let modelLightMaxPower: String
    let ttl: Bool
    let hhs: Bool
    
    // rental cost
    let reservationFee: Double
    let costPerMinute: Double
}
