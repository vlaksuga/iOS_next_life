//
//  Model.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/26.
//

import Foundation
import SwiftUI
import CoreLocation

struct Nation: Hashable, Codable, Identifiable {
    
    var id: Int
    var engName: String
    var korName: String
    var description: String
    var latitude: Double
    var longitude: Double
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordianate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude)
    }
    
}
