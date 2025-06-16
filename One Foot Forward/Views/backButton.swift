//
//  backButton.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 16/06/2025.
//

import SwiftUI

struct backButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action:{
            dismiss()
        }, label:{
            Image("Back")
                .resizable()
                .scaledToFit()
                .frame(height: 44)
            
                .padding(.leading)
            
        })
    }
}

#Preview {
    backButton()
}
