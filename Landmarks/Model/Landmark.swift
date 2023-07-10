//
//  Landmark.swift
//  Landmarks
//
//  Created by Eunji Hwang on 2023/07/07.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    // image를 불렀을 때, 그 구조체의 imageName으로 만든 image를 리턴해주는 계산속성
    var image: Image {
        Image(imageName)
    }
    
    
    private var coordinates: Cordinates
    // coordinates를 가지고 Mapkit위에 그 위치를 표현할 수 있도록 하는 것
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Cordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}



