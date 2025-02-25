//
//  SeriesList.swift
//  binge-queuer
//
//  Created by Ivar Schreutelkamp on 17/02/2025.
//

import SwiftUI

struct SeriesList: View {
    @State private var seriesDataList = seriesSourceList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(seriesDataList) { series in
                    NavigationLink(destination: SeriesDetail(series: series)) {
                        BingeRow(series: series)
                    }
                }
                .onDelete(perform: delete)
            }
            .navigationTitle("Series List")
            .toolbar { EditButton() }
        }
    }
    
    func delete(at offsets: IndexSet) {
        seriesDataList.remove(atOffsets: offsets)
    }
}

#Preview {
    SeriesList()
}
