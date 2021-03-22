//
//  ContentView.swift
//  ImageCarousel
//
//  Created by Brandon Baars on 1/7/20.
//  Copyright © 2020 Brandon Baars. All rights reserved.
//

import SwiftUI

extension Font {
    static func avenirNext(size: Int) -> Font {
        return Font.custom("Avenir Next", size: CGFloat(size))
    }
    
    static func avenirNextRegular(size: Int) -> Font {
        return Font.custom("AvenirNext-Regular", size: CGFloat(size))
    }
}

struct HomeView: View {
    @Binding var lights: [Light]
    @Binding var selectedLight: Light?
    
    @State private var showingSheet = false

    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                ImageCarouselView(numberOfImages: 10) {
                    Image("image_carousel_1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_4")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_5")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_6")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_7")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_8")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_9")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_10")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                }
            }.frame(height: 480, alignment: .center)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Welcome to")
                            .font(.avenirNext(size: 12))
                            .foregroundColor(.gray)
                        Text("Studio 810")
                            .font(.avenirNext(size: 17))
                    }
                }
                
                Text("https://www.studio810.com")
                    .font(.avenirNextRegular(size: 12))
                    .foregroundColor(.gray)
                
                Text("Featured Rental Items")
                    .font(.avenirNext(size: 32))
                Text(loremIpsum)
                    .lineLimit(nil)
                    .font(.avenirNextRegular(size: 17))
            }
            .padding(.horizontal)
            .padding(.top, 16.0)
        }.edgesIgnoringSafeArea(.all)
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        let light = Light(id: 1,
//                          name: "B1X",
//                          description: "We’d like to think of the B1X as power with a purpose. And that purpose is simple; we want you to be able to realize your vision wherever you may go. If that’s halfway up a mountain, overpowering the sun hanging off a rock overlooking the Mediterranean – then so be it. Because the B1X is no stay-at-home flash; it’s for the professionals who likes to get out there on location in the real world. That’s why B1X offers Profoto studio light reliability and performance in a cordless and robust and package that is battletested on location by professionals. Because we want you to have power in all the right places.",
//                          brand: .profoto,
//                          iconImage: "",
//                          image: "",
//                          productNumber: "330169",
//                          maxEnergy: "500 Ws",
//                          energyRange: "9 f-stops (2-500 Ws)",
//                          recyclingTime: "0.1-1.9 (Quick burst up to 20 flashes/second)",
//                          modelLightMaxPower: "24W LED (Output equivalent to 130W Halogen)",
//                          ttl: true,
//                          hhs: true,
//                          reservationFee: 100,
//                          costPerMinute: 2)
//
//        StatefulPreviewWrapper([light]) { HomeView(lights: $0, selectedLight: $0[0]) }
//    }
//}

let loremIpsum = """
Lorem ipsum dolor sit amet consectetur adipiscing elit donec, gravida commodo hac non mattis augue duis vitae inceptos, laoreet taciti at vehicula cum arcu dictum. Cras netus vivamus sociis pulvinar est erat, quisque imperdiet velit a justo maecenas, pretium gravida ut himenaeos nam. Tellus quis libero sociis class nec hendrerit, id proin facilisis praesent bibendum vehicula tristique, fringilla augue vitae primis turpis.

Lorem ipsum dolor sit amet consectetur adipiscing elit donec, gravida commodo hac non mattis augue duis vitae inceptos, laoreet taciti at vehicula cum arcu dictum. Cras netus vivamus sociis pulvinar est erat, quisque imperdiet velit a justo maecenas, pretium gravida ut himenaeos nam. Tellus quis libero sociis class nec hendrerit, id proin facilisis praesent bibendum vehicula tristique, fringilla augue vitae primis turpis.
"""

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
