//
//  FruitsApp.swift
//  Shared
//
//  Created by Ezra Bathini on 2/01/22.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("hasOnboarded") var hasOnboarded: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if hasOnboarded {
                ContentView()
            } else {
                OnboardingView()
            }
        }
    }
}
