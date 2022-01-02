//
//  FruitNutrients.swift
//  Fruits
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct FruitNutrients: View {
    var fruit: Fruit
    let nutrientlabels = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrientlabels.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrientlabels[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrients_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrients(fruit: fruitsData[3]).previewLayout(.fixed(width: 375, height: 480)).padding().preferredColorScheme(.dark)
    }
}
