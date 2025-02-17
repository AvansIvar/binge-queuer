//
//  SeriesList.swift
//  binge-queuer
//
//  Created by Ivar Schreutelkamp on 17/02/2025.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        List(seriesSourceList) {
            series in BingeRow(series: series)
        }
    }
}

#Preview {
    SeriesList()
}
