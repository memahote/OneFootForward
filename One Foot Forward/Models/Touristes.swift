//
//  Touristes.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 02/06/2025.
//

import Foundation
import SwiftUI

struct Touristes: Identifiable {
    let id = UUID()
    var rangColor: Color
    var rang: String
    let nom: String
    var note: Double
    var texte: String
    var date: Date
    var photo: String
    var mission: String
    var duree: String
    let lieu: String
    var messages: [Message]
}

struct Message: Identifiable {
    let id = UUID()
    var texte: String
    var date: Date
    var isSender: Bool
}




