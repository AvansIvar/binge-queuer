//
//  SeriesDetail.swift
//  binge-queuer
//
//  Created by Ivar Schreutelkamp on 25/02/2025.
//

import SwiftUI
import CoreLocation

struct SeriesDetail: View {
    var series: Series
    var spacerSize: CGFloat = 2.0
    var mapHeight: CGFloat = 300.0
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                MapView(coordinate: CLLocationCoordinate2DMake(
                    series.latitude,
                    series.longitude))
                .frame(height: mapHeight)
                
                HStack {
                    Spacer()
                    CircleImage(image: Image(series.image))
                        .offset(y: -spacerSize)
                        .padding(.bottom, -spacerSize)
                    Spacer()
                }
                
                Text(series.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Seasons: \(series.seasons)")
                    .font(.headline)
                
                Text(series.description)
                    .font(.body)
                    .padding(.top, 10)
            }
            .padding()
        }
        .navigationTitle(series.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SeriesDetail(series: Series(id: 4, title: "Rick and Morty", description: "An animated series that follows the exploits of a super scientist and his not so bright" + " grandson", seasons: 2, image: "rickandmorty", latitude: 47.603776, longitude: -122.330765))
}
