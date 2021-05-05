//
//  MapView.swift
//  VolcanoApp
//
//  Created by Kristbjorg Oskarsdottir on 2.5.2021.
//

import Foundation
import MapKit
import SwiftUI


struct MapView: View {
    @EnvironmentObject var dataModals: ApiModal
    
    // property wrapper to keep the data alive
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D (latitude: 63.889393, longitude: -22.270503),
        span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: dataModals.results) {
            location in
            MapAnnotation(coordinate:
                            CLLocationCoordinate2D(latitude: location.coordinates.latitude, longitude: location.coordinates.longitude)) {
                VStack {
                    Circle()
                        .fill(Color.green)
                        .opacity(0.5)
                        .frame(width: 50, height: 25)
                    //                Image(systemName: "mappin")
                    //                    .font(.headline)
                    //                    .foregroundColor(.red)
                    //                Text(location.city)
                }
            }
        }
        .navigationTitle("Kort")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
