//
//  ExtractedViewChat.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import SwiftUI

struct ExtractedViewChat: View {
    var touriste: Touristes
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .stroke(touriste.rangColor, lineWidth: 10)
                
                Image(touriste.photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
            }
            .padding()
            
            VStack{
                HStack{
                    Text(touriste.nom)
                        .font(.headline)
                    
                    Spacer()
                }
                
                HStack{
                    Text(touriste.texte)
                        .lineLimit(1)
                    Spacer()
                    
                }
            }
            Button(action: {}) {
                Text(Image(.exclamation))
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
            }
            .padding()
            

            
        }
        .background(.white)
        .cornerRadius(20)
        .frame(width: 380, height: 100)
        .padding(.horizontal)
        .padding(.top, 15)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 2, y: 2)
        
        
    }

}

#Preview {
    ExtractedViewChat(touriste: touriste1)
}
