//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Temitope Adegoke on 25/09/2022.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach($scrums) { $scrum in
                NavigationLink (destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                        
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}){
                Image(systemName: "plus")
            }
            .accessibilityLabel("Create scrum")
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView() {
            ScrumsView(scrums: .constant(DailyScrum.sampleData))
        }
    }
}
