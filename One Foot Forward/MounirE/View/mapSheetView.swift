//
//  mapSheetView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 14/06/2025.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    var location: Location
    
    var body: some View {
        VStack(spacing: 20) {
            Text(location.name)
                .font(.title)
                .bold()
            Text(location.description)
                .font(.body)
            Button("Fermer") {
               dismiss()
            }
        }
        .padding()
    }
}




