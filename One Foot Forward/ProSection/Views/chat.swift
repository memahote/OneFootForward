//
//  chat.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import SwiftUI

struct chat: View {
    
    var touristsList: [Touristes] = listeDesTouristes
    
    
    
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
                    
                    ForEach(touristsList){ touriste in
                        NavigationLink {
                            Conversations(messageList: touriste.messages, touriste: touriste)
                        } label: {
                            ExtractedViewChat(touriste: touriste)
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
