//
//  ContentView.swift
//  Shared
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    @State private var showSettings: Bool = false
    
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRow(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                showSettings.toggle()
            }) {
                Image(systemName: "slider.horizontal.3")
            }.sheet(isPresented: $showSettings) {
                SettingsView()
            })
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
