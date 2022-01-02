//
//  SettingRow.swift
//  Fruits
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct SettingsRow: View {
    var key: String
    
    var value: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(key).foregroundColor(.gray)
                Spacer()
                if value != nil {
                    Text(value!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: linkDestination!)!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}
struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRow(key: "Developer", value: "Ezra").previewLayout(.sizeThatFits).padding()
            SettingsRow(key: "Developer", value: "Ezra").preferredColorScheme(.dark).previewLayout(.sizeThatFits).padding()
            SettingsRow(key: "Developer", linkLabel: "wiki", linkDestination: "https://en.wikipedia.com").preferredColorScheme(.light).previewLayout(.sizeThatFits).padding()
            SettingsRow(key: "Developer", linkLabel: "wiki", linkDestination: "https://en.wikipedia.com").preferredColorScheme(.dark).previewLayout(.sizeThatFits).padding()
        }
    }
}
