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
    
    var nation: Nation
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
    )
    
    var body: some View {
        let items = [nation]
        Map(coordinateRegion: $region, annotationItems: items) { item in
            MapMarker(coordinate: item.locationCoordianate)
        }
            .onAppear{
                setRegion(region: nation.locationCoordianate)
            }
    }
    
    private func setRegion(region coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: nation.locationCoordianate,
            span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0))
    }
}

struct MapView_Previews: PreviewProvider {
    private static var prenation = nations[0]
    static var previews: some View {
        MapView(nation: prenation)
    }
}
