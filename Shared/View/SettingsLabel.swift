//
//  SettingsLabel.swift
//  Fruits
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct SettingsLabel: View {
    
    var labelText, labelImage: String
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
            
        }
    }
}

struct SettingsLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabel(labelText: "fruits", labelImage: "info.circle").previewLayout(.sizeThatFits)
    }
}
