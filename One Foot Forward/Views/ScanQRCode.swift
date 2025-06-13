//
//  ScanQRCode.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 12/06/2025.
//

import SwiftUI

struct ScanQRCode: View {
    var body: some View {
        ZStack {
            Image("qr")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .all)
            
            Rectangle()
                .stroke(.accent.opacity(0.5), lineWidth: 10)
                .cornerRadius(5)
                .frame(width: 220, height: 220)
                .foregroundStyle(.gray.opacity(0.0))
                
                
        }
        

    }
}

#Preview {
    ScanQRCode()
}
