//
//  MapView.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/23.
//

import SwiftUI
import MapKit

struct Items: Identifiable {
    let id = UUID()
    var name: String
    var place: CLLocationCoordinate2D
}


struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
    )
    
    var collection = nations
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: nations){ nation in
            MapMarker(coordinate: nation.locationCoordianate)
        }
            .onAppear{
                setRegion(region: coordinate)
            }
    }
    
    private func setRegion(region coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
