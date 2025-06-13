//
//  eventDetailModel.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 13/06/2025.
//

import Foundation

struct eventDetail: Identifiable {
    let id = UUID()
    let imageName: String
    let lieuName: String
    let description: String
    let reward: String
}
