//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eunji Hwang on 2023/07/07.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                // 클릭시 연결되는 Link
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                // 표시될 라벨 자체
                } label: {
                    LandmarkRow(landmark: landmark)
                }

            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 13", "iPhone 14"], id: \.self) { deviceName in
                   LandmarkList()
                       .previewDevice(PreviewDevice(rawValue: deviceName))
        }
        
    }
}

