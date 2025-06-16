//
//  ExtractedViewChat.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import SwiftUI

struct ExtractedViewChat: View {
    var touriste: Touristes
    @State private var showAlert = false
    @State private var isPressed: Bool = false
    @State private var isButtonVisible: Bool = true
    
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
                        .foregroundStyle(Color.black)
                    
                    Spacer()
                }
                
                HStack{
                    Text(touriste.texte)
                        .lineLimit(1)
                        .foregroundStyle(Color.black)
                    
                    Spacer()
                    
                    
                }
            }
            if isButtonVisible {
                Button(action: {
                    showAlert = true
                    isPressed = true
                                    }) {
                    Text(Image(.exclamation))
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10)
                }
                .alert("Cet utilisateur sera signalé", isPresented: $showAlert) {
                    Button("OK", role: .cancel){
                        isButtonVisible = false
                    }}
                .padding()
                
                
                
            }
                
            
        }.background(isPressed ? Color.gray.opacity(0.3) : Color.white)
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
