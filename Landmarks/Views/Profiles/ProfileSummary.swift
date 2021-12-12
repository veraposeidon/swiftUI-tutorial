//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by shenxiaohai on 2021/12/11.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(profile.username)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)

                Divider()

                VStack(alignment: .leading, spacing: nil, content: {
                    Text("Completed badges")
                        .font(.headline)

                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(content: {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.50)
                                .hueRotation(Angle(degrees: 45))
                        })
                        .padding(.bottom)
                    })
                })

                Divider()

                VStack(alignment: .leading, spacing: nil, content: {
                    Text("Recent Hikes")
                        .font(.headline)
                    HikeView(hike: modelData.hikes[0])
                })
            }
            .padding()
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
