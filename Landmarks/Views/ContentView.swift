//
//  ContentView.swift
//  Landmarks
//
//  Created by Eunji Hwang on 2023/07/04.
//

import SwiftUI

// view's content and layout
struct ContentView: View {
    var body: some View {
      LandmarkList()
    }
}

// preview for that view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
