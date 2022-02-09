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
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
