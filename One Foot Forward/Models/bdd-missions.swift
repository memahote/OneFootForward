//
//  bdd-missions.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 13/06/2025.
//

import Foundation
import SwiftUI

struct typeMissions: Identifiable {
    let id = UUID()
    var missionName: String
    var missionDescription: String
    var missionCategory: String
    var missionReward: String
    var missionBooking: Bool
}

var mission1: typeMissions = typeMissions(missionName: "Ramassage des déchets (1h30)", missionDescription: "Recycler les déchets en respectant les normes environnementales", missionCategory: "Ramassage de déchets", missionReward: "100 points de fidélité", missionBooking: false)
var mission2: typeMissions = typeMissions(missionName: "Viens en vélo", missionDescription: "Venez en vélo ou en mobilité douce", missionCategory: "Mobilité", missionReward: "Un café offert", missionBooking: true)
var mission3: typeMissions = typeMissions(missionName: "Ramassage des déchets (2h00)", missionDescription: "Ramasser les déchets pendant 2h", missionCategory: " Ramassage de déchets", missionReward: "100 points de fidélité", missionBooking: false)
var mission4: typeMissions = typeMissions(missionName: "Ramassage des déchets (2h00)", missionDescription: "Ramasser les déchets pendant 2h", missionCategory: "Ramassage de déchets", missionReward: "Un café offert", missionBooking: true)

var missionList: [typeMissions] = [mission1, mission2, mission3, mission4]






