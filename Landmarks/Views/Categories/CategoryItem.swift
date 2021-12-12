//
//  CategoryItem.swift
//  Landmarks
//
//  Created by shenxiaohai on 2021/12/11.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155, alignment: .center)
                .cornerRadius(5)

            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        })
        .padding(.leading, 15)

    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
