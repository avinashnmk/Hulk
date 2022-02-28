//
//  HulkApp.swift
//  Hulk
//
//  Created by Avinash.Kandaswamy on 2/9/22.
//

import SwiftUI

@main
struct HulkApp: App {
    
    //   @State private var scrums = DailyScrum.sampleData
    @StateObject private var store = ScrumStore()
    var body: some Scene {
        WindowGroup{
            NavigationView {
                ScrumsView(scrums: $store.scrums){
                    ScrumStore.save(scrums: store.scrums) { result in
                        if case .failure(let error) = result {
                                                  fatalError(error.localizedDescription)
                                              }
                    }
                }
            }
            .onAppear {
                ScrumStore.load { result in
                    switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let scrums):
                        store.scrums = scrums
                    }
                }
            }
            
        }
    }
}
