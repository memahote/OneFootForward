//
//  Conversations.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import SwiftUI



struct Conversations: View {
    
    @State var messageList: [Message] = listeDesMessages
    var touriste: Touristes
    @State var message: String = ""
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        NavigationStack{
            
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
                
                
            }
            .toolbarVisibility(
                .hidden, for: .tabBar)
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    VStack{
                        Spacer(minLength: 40)
                        
                        HStack{
                            backButton()
                            
                            ZStack{
                                
                                
                                
                                
                                Circle()
                                    .stroke(touriste.rangColor, lineWidth: 10)
                                    .frame(width: 70, height: 70)
                                    .padding(.leading, 10)
                                
                                Image(touriste.photo)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 65, height: 65)
                                    .clipShape(Circle())
                                    .padding(.leading, 10)
                            }
                            
                            
                            
                            
                            Text(touriste.nom)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.leading)
                            
                            
                            Spacer()
                            
                            
                            Spacer(minLength: 5)
                            
                            
                        }
                        
                    }
                    .frame(width: 400, height: 150)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .edgesIgnoringSafeArea(.top)
                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 2, y: 2)
                    
                }
                
            }
        }
        
        
        
    }
    
    
    
}



#Preview {
    Conversations(touriste: touriste1)
}

