//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eunji Hwang on 2023/07/07.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = true
    
    // 필터링 된 랜드마크 : landmark가 true이거나, showFavoriteOnly가 true일때
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                
                // 각각의 filter 리스트
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    // 표시될 라벨 자체
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        //        ForEach(["iPhone 13", "iPhone 14"], id: \.self) { deviceName in
//                   LandmarkList()
//                       .previewDevice(PreviewDevice(rawValue: deviceName))
//        }
        
    }
}

