//
//  chat.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import SwiftUI

struct chat: View {
    var body: some View {
        VStack{
            HStack{
                // Titre principal
                Text("Ma messagerie")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            
            ScrollView{
                
                ForEach(listeDesTouristes){
                    index in
                    ExtractedViewChat(touriste: index)
                    
                }
                
                
                
            }
            
        }
        
        
    }
}

#Preview {
    chat()
}
