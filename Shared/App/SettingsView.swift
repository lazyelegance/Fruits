//
//  SettingsView.swift
//  Fruits
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("hasOnboarded") var hasOnboarded: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(label: SettingsLabel(labelText: "Fruits", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.").font(.footnote)
                        }
                    }
                    GroupBox(label: SettingsLabel(labelText: "Customisation", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Button {
                            hasOnboarded.toggle()
                        } label: {
                            Text("Reset".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                        .padding()
                        .background(.tertiary)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                    GroupBox(label: SettingsLabel(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRow(key: "Developer", value: "Ezra")
                        SettingsRow(key: "Website", linkLabel: "ezrabathini.com", linkDestination: "https://www.ezrabathini.com")
                        SettingsRow(key: "Compatibility", value: "iOS 15")
                        SettingsRow(key: "Version", value: "0.0.1")
                        SettingsRow(key: "buit with", linkLabel: "swiftUI", linkDestination: "https://developer.apple.com/xcode/swiftui/")
                    }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark)
    }
}


