//
//  Fruit.swift
//  Fruits
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title, headline, image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
