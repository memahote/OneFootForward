//
//  listModuleView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 09/06/2025.
//

import SwiftUI

struct listModuleView: View {
    var imageName : String
    var lieuName : String
    var description : String
    var reward : String

    var body: some View {
        HStack(spacing: 12) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(lieuName)
                    .font(.system(size: 14))
                    .bold()
                    .lineLimit(1)
                    .truncationMode(.tail)

                Text(description)
                    .font(.subheadline)
                    .foregroundStyle(.gray.opacity(0.8))
                    .lineLimit(1)
                    .truncationMode(.tail)
            }

            Spacer()

            Text(reward.uppercased())
                .font(.caption2)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.accent.opacity(0.2))
                .foregroundColor(.accent)
                .clipShape(Capsule())
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.3), radius: 5, x: 2, y: 2)
        )
        .padding(.vertical, 4)
    }
}


#Preview {
    listModuleView(imageName: "Restaurant1", lieuName: "La brasserie de la gare", description: "venez en bus ou en vélo", reward: "Café gratuit")
}
