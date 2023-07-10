//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eunji Hwang on 2023/07/07.
//

import SwiftUI

struct LandmarkList: View {
    // 여기에 model 데이터를 만들었기 때문에 그 안에 들어있는 landmarkDetail도 적용되게 된다.
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = true
    
    // 필터링 된 랜드마크 : landmark가 true이거나, showFavoriteOnly가 true일때
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
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
            .environmentObject(ModelData())
        //        ForEach(["iPhone 13", "iPhone 14"], id: \.self) { deviceName in
//                   LandmarkList()
//                       .previewDevice(PreviewDevice(rawValue: deviceName))
//        }
        
    }
}

