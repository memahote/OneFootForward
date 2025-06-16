//
//  RingView.swift
//  One Foot Forward
//
//  Created by Mounir on 08/06/2025.
//

import SwiftUI

struct RingView: View {
    var percent: CGFloat
    var thickness: CGFloat
    var color: Color

    var body: some View {
        ZStack {
            
            Circle()
                .stroke(color.opacity(0.3), style: StrokeStyle(lineWidth: thickness))
            
            
            Circle()
                .trim(from: 0, to: percent)
                .stroke(color, style: StrokeStyle(lineWidth: thickness, lineCap: .round))
                .rotationEffect(.degrees(80))
            Text("Objectif")
                .font(.title2)
        }
    }

}
#Preview {
    Dashboard()
}
