//
//  MapView.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/23.
//

import SwiftUI
import MapKit

struct MyAnnotationItem: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    
    @State private var regieon = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 40.0, longitudeDelta: 40.0)
    )
    
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    ]
    
    var body: some View {
        Map(coordinateRegion: $regieon, annotationItems: annotationItems) { item in
            MapPin(coordinate: item.coordinate)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
