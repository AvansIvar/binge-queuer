//
//  ContentView.swift
//  binge-queuer
//
//  Created by Ivar Schreutelkamp on 14/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SeriesList()) {
                    Text("Series list")
                }
            }
            .padding()
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
