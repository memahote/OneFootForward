//
//  Conversations.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import SwiftUI

struct Conversations: View {
    var body: some View {
        VStack {
            
            header()
            
            ForEach(touriste1.messages) { index in
                if index.isSender{
                    messageRecu(message: index)
                }
                else {
                    messageEnvoye(message: index)
                }
            }
            
        }
    }
}

func header() -> some View {
    VStack{
        HStack{
            // Titre principal
            ZStack{
                Circle()
                    .stroke(touriste1.rangColor, lineWidth: 10)
                    .frame(width: 85, height: 85)
                    .padding(10)
                
                
                Image(touriste1.photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
            }
            
            
            
            
            Text(touriste1.nom)
                .font(.title)
                .fontWeight(.bold)
            
            
            Spacer()
        }
        .background(.white.opacity(0.6))
        .cornerRadius(20)
        .frame(width: 392, height: 100)
        .padding(.horizontal)
        .padding(.top, 15)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 2, y: 2)
        
        
    }
    
    
}




#Preview {
    Conversations()
}
