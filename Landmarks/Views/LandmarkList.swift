//
//  LandmarkList.swift
//  Landmarks
//
//  Created by shenxiaohai on 2021/12/8.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false

    var filteredLandmarkss : [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }


    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorate Only")
                })
                ForEach(filteredLandmarkss) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark),
                    label: {
                        LandmarkRow(landmark: landmark)
                    })
            }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11", "iPhone 12"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
