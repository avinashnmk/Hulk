//
//  HulkApp.swift
//  Hulk
//
//  Created by Avinash.Kandaswamy on 2/9/22.
//

import SwiftUI

@main
struct HulkApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup{
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
            
        }
    }
}
