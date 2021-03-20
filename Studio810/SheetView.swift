//
//  SheetView.swift
//  Studio810
//
//  Created by Ryan Thomas on 3/20/21.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        VStack(alignment: .leading) {
                            Image("image_carousel_1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width, height: 200)
                                .clipped()
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
                    
                    Text("Welcome to our studio")
                        .font(.avenirNext(size: 28))
                    
                    Text(loremIpsum)
                        .lineLimit(nil)
                        .font(.avenirNextRegular(size: 17))
                    
                    Button("Press to dismiss") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .font(.title)
                    .padding()
                    .background(Color.black)
                }
            }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
