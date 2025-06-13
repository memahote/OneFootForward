//
//  Conversations.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import SwiftUI



struct Conversations: View {
    
    @State var message: String = ""
    @State var messageList: [Message] = touriste1.messages
    
    
    var body: some View {
        
        
        
        
        ZStack(alignment: .top){
            
            
            
            VStack {
                
                
                
                
                ScrollViewReader { proxy in
                    
                    
                    ScrollView{
                        
                        
                        VStack(spacing: 2) {
                            
                            
                            
                            ForEach(messageList) { index in
                                if index.isSender{
                                    messageRecu(message: index)
                                }
                                else {
                                    messageEnvoye(message: index)
                                }
                            }
                            Color.clear
                                .frame(height: 1)
                                .id("BOTTOM")
                            
                        }
                        
                    }
                   
                    
                    
                    HStack {
                        TextField("Nouveau Message", text: $message)
                            .keyboardType(.default)
                            .padding()
                        
                        Button(action: {
                            
                            messageList.append(Message(texte: message, date: Date(), isSender: true,))
                            
                            message = ""
                            
                            withAnimation {
                                proxy.scrollTo("BOTTOM", anchor: .bottom)
                            }
                            
                            
                        }, label: {
                            Image(systemName: "paperplane.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(Color.accentColor)
                        })
                    }
                    .padding()
                    .frame(width: 375, height: 70)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.gray.opacity(0.3), radius: 15, x: 2, y: 2)
                }
                .padding(.horizontal)
            }
            
            HStack{
                header()
                
            }
            
        }
    }
    
    
    
    
    func header() -> some View {
        
        
        
        return VStack {
            
            Spacer(minLength: 40)
            
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
            
            Spacer(minLength: 5)
            
            
        }
            .frame(width: 400, height: 150)
            .background(.ultraThinMaterial)
            .cornerRadius(10)
            .padding(.horizontal)
            .edgesIgnoringSafeArea(.top)
            .shadow(color: .gray.opacity(0.3), radius: 5, x: 2, y: 2)
    }
        
        
    }





#Preview {
    Conversations()
}

