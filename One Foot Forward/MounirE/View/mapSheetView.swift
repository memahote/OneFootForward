//
//  mapSheetView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 14/06/2025.
//

import SwiftUI
import MapKit


struct DetailView: View {
    
        @Environment(\.dismiss) var dismiss
        var item: ModuleItem
        
        var body: some View {
            VStack(spacing: 20) {
                
                HStack{
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundStyle(.red)
                    }

                }
                
                Image(item.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    .padding()
                    

                Text(item.lieuName)
                    .font(.title)
                    .bold()

                HStack(spacing: 30) {
                    
                    HStack {
                        Image(systemName: "clock.fill")
                            .foregroundStyle(.gray)
                        Text(item.duration)
                    }
                    
                    HStack {
                        Image(systemName: "trophy.fill")
                            .foregroundStyle(.yellow)
                        Text(item.reward)
                    }
                }
                .font(.body)

                Button("Voir plus") {
                    // lancer le détail, par ex. avec NavigationLink
                }
                .padding()
                .frame(width: 200)
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(10)

            }
            .padding()
        }
    
}

#Preview {
    DetailView(item: sampleModulesList[0])
}

