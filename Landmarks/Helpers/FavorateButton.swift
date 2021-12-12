//
//  FavorateButton.swift
//  Landmarks
//
//  Created by shenxiaohai on 2021/12/8.
//

import SwiftUI

struct FavorateButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(IconOnlyLabelStyle())
                .foregroundColor(isSet ? .yellow : .gray)
        })
    }
}

struct FavorateButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FavorateButton(isSet: .constant(true))
        }
    }
}
