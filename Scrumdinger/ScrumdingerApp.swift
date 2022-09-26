//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Temitope Adegoke on 09/06/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
        
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
