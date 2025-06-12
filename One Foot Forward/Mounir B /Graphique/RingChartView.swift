//
//  RingChartView.swift
//  One Foot Forward
//
//  Created by Mounir on 08/06/2025.
//

import SwiftUI

struct RingChartView: View {
    var body: some View {
        VStack {
            ZStack {
                RingView(percent: 0.5, thickness: 20, color: .accent)
                    .frame(width: 200, height: 200)

                RingView(percent: 0.5, thickness: 15, color: .green)
                    .frame(width: 160, height: 160)

                RingView(percent: 0.5, thickness: 15, color: .blackGreen)
                    .frame(width: 120, height: 120)

            
            }
            Spacer()

            VStack(alignment: .leading, spacing: 10) {
                LegendView(color: .accent, title: "Déchets ramassés", value: "50/100 Kg")
                Divider()
                LegendView(color: .green, title: "Nombre de réservations", value: "100/200")
                Divider()
                LegendView(color: .blackGreen, title: "Voyageurs totaux", value: "100/200")
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}
#Preview {
    Dashboard()
}
