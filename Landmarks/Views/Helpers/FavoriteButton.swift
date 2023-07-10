//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Eunji Hwang on 2023/07/11.
//

import SwiftUI

struct FavoriteButton: View {
    // button's current state
    // Binding 되어 있어서 이것을 사용하는 쪽으로 이 값이 전파된다.
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
