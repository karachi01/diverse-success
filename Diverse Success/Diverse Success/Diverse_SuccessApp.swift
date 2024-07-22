//
//  Diverse_SuccessApp.swift
//  Diverse Success
//
//  Created by Karachi Onwuanibe on 3/19/24.
//

import SwiftUI
import SwiftData

@main
struct Diverse_SuccessApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
           //    ContentView()
                Welcomepage()
                    .background(Color(hue: 0.654, saturation: 0.238, brightness: 0.92))
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
