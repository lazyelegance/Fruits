//
//  FruitHeader.swift
//  Fruits
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct FruitHeader: View {
    var fruit: Fruit
    
    @State private var animationComplete = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(animationComplete ? 1.0 : 0.6)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                animationComplete = true
            }
        }
    }
}

struct FruitHeader_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeader(fruit: fruitsData[4]).previewLayout(.fixed(width: 375, height: 440))
    }
}
