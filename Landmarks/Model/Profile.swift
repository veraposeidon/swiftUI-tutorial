//
//  Profile.swift
//  Landmarks
//
//  Created by shenxiaohai on 2021/12/11.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Self(username: "g_shen")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String {
            rawValue
        }
    }
}
