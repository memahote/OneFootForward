//
//  chat.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import SwiftUI

struct chat: View {
    var body: some View {
        NavigationStack{
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
                    
                    ForEach(listeDesTouristes){ index in
                        NavigationLink {
                            Conversations()
                        } label: {
                            ExtractedViewChat(touriste: index)
                        }

                        
                        
                        
                    }
                    
                    
                    
                }
            }
        }
        
        
    }
}


#Preview {
    chat()
}
