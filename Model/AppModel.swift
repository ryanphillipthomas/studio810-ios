import Foundation

class AppModel: ObservableObject {
    
    @Published var selectedLight: Light?
    @Published var isHelpPresented: Bool = false
    
    @Published var lights: [Light] = [
        Light(id: 1,
              name: "B1X",
              description: "We’d like to think of the B1X as power with a purpose. And that purpose is simple; we want you to be able to realize your vision wherever you may go. If that’s halfway up a mountain, overpowering the sun hanging off a rock overlooking the Mediterranean – then so be it. Because the B1X is no stay-at-home flash; it’s for the professionals who likes to get out there on location in the real world. That’s why B1X offers Profoto studio light reliability and performance in a cordless and robust and package that is battletested on location by professionals. Because we want you to have power in all the right places.",
              brand: .profoto,
              iconImage: "",
              image: "",
              productNumber: "330169",
              maxEnergy: "500 Ws",
              energyRange: "9 f-stops (2-500 Ws)",
              recyclingTime: "0.1-1.9 (Quick burst up to 20 flashes/second)",
              modelLightMaxPower: "24W LED (Output equivalent to 130W Halogen)",
              ttl: true,
              hhs: true,
              reservationFee: 100,
              costPerMinute: 2)
    ]
    
    func findLightById(_ id: Int) -> Light? {
        return lights.first(where: { $0.id == id })
    }

}
