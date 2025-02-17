//
//  BingeRow.swift
//  binge-queuer
//
//  Created by Ivar Schreutelkamp on 17/02/2025.
//

import SwiftUI

struct BingeRow: View {
    var series: Series
    var body: some View {
        HStack {
            Image(series.image)
                .resizable()
                .frame(width: 50, height: 50)
            Text(series.title)
        }
    }
}

#Preview {
    BingeRow(series: seriesSourceList[4])
}
