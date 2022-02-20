//
//  HulkApp.swift
//  Hulk
//
//  Created by Avinash.Kandaswamy on 2/9/22.
//

import SwiftUI

@main
struct HulkApp: App {
 
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup{
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
            
        }
    }
}
