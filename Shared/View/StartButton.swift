//
//  StartButton.swift
//  Fruits
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct StartButton: View {
    
    @AppStorage("hasOnboarded") var hasOnboarded: Bool?
    
    var body: some View {
        Button(action: {
            hasOnboarded = true
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton().previewLayout(.sizeThatFits).preferredColorScheme(.dark)
    }
}
