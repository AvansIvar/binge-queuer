//
//  SeriesList.swift
//  binge-queuer
//
//  Created by Ivar Schreutelkamp on 17/02/2025.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        NavigationView {
            List(seriesSourceList) { series in
                NavigationLink(destination: BingeRow(series: series)) {
                    BingeRow(series: series)
                }
            }
            .navigationTitle("Series List")
        }
    }
}

#Preview {
    SeriesList()
}
