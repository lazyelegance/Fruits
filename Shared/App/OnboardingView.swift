//
//  OnboardingView.swift
//  Fruits
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct OnboardingView: View {
    var data: [Fruit] = fruitsData
    
    var body: some View {
        HStack {
            TabView() {
                ForEach(data[0...5]) { item in
                    FruitCard(fruit: item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
