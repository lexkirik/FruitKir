//
//  FruitKirApp.swift
//  FruitKir
//
//  Created by Test on 16.09.23.
//

import SwiftUI

@main
struct FruitKirApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
