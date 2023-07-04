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
        VStack {
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Text("California")
                        .font(.subheadline)
                }
            }
            
        }
        .padding()
    }
}

// preview for that view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
