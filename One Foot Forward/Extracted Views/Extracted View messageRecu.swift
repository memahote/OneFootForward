//
//  Extracted View messageRecu.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 10/06/2025.
//

import SwiftUI

struct Extracted_View_messageRecu: View {
    var body: some View {
        messageRecu(message: Message2)
        messageEnvoye(message: Message2)
    }
}


func messageRecu( message: Message  ) -> some View {
    HStack{
        Spacer()
        VStack{
            
            
            HStack {
                Spacer()
                Text(message.texte)
                    .foregroundColor(.black)
                    .font(.body)
                    .padding()
                    .background(Color.eggShell)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20,
                            bottomLeadingRadius: 20,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 20
                        )
                    )
            }
            
            HStack{
                
                Spacer()
                
                
                Text(message.date, style: .time)
                    .font(.caption)
                    .foregroundColor(Color.gray)
                
            }
        }
        .padding(10)
        
    }
}
func messageEnvoye( message: Message  ) -> some View {
    HStack{
        VStack{
            
            
            HStack {
                Text(message.texte)
                    .foregroundColor(.black)
                    .font(.body)
                    .padding()
                    .background(Color.accentColor)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 20,
                            topTrailingRadius: 20
                        )
                    )
                Spacer()
            }
            
            HStack{
                
                
                
                
                Text(message.date, style: .time)
                    .font(.caption)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
            }
        }
        .padding(10)
        
        Spacer()
    }
}

#Preview {
    Extracted_View_messageRecu()
}
