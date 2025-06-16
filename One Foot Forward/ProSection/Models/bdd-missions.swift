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
    var missionImage: String
    var missionName: String
    var missionDescription: String
    var missionCategory: String
    var missionReward: String
    var missionBooking: Bool
}

var mission1: typeMissions = typeMissions(missionImage: "nettoyage1", missionName: "Ramassage des déchets (1h00)", missionDescription: "Recycler les déchets en respectant les normes environnementales", missionCategory: "Ramassage de déchets", missionReward: "100 points de fidélité", missionBooking: false)
var mission2: typeMissions = typeMissions(missionImage: "nettoyage2", missionName: "Ramassage des déchets (1h30)", missionDescription: "Venez en vélo ou en mobilité douce", missionCategory: "Mobilité", missionReward: "Un café offert", missionBooking: true)
var mission3: typeMissions = typeMissions(missionImage: "nettoyage3", missionName: "Ramassage des déchets (2h00)", missionDescription: "Ramasser les déchets pendant 2h", missionCategory: " Ramassage de déchets", missionReward: "100 points de fidélité", missionBooking: false)
var mission4: typeMissions = typeMissions(missionImage: "nettoyage4", missionName: "Ramassage des déchets (2h00)", missionDescription: "Ramasser les déchets pendant 2h", missionCategory: "Ramassage de déchets", missionReward: "Un café offert", missionBooking: true)

var missionList: [typeMissions] = [mission1, mission2, mission3, mission4]






