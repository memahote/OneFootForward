//
//  LegendView.swift
//  One Foot Forward
//
//  Created by Mounir on 08/06/2025.
//

import SwiftUI

struct LegendView: View {
    var color: Color
    var title: String
    var value: String

    var body: some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 10, height: 10)
            Text(title)
            Spacer()
            Text(value)
        }
    }
}
#Preview {
    Dashboard()
}
