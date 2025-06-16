//
//  Chat Detail User.swift
//  One Foot Forward
//
//  Created by Samara Lima da Silva on 15/06/2025.
//

import SwiftUI

struct Chat_Detail_User: View {
    
    @State var message: String = ""
    @State var messageList: [Message] = touriste1.messages
    
    var body: some View {
        ZStack(alignment: .top) {
            
            
            ScrollViewReader { proxy in
                
                ScrollView(showsIndicators: false) {
                    Color.clear
                        .frame(height: 160)
                    
                    VStack(spacing: 2) {
                        ForEach(messageList) { msg in
                            if msg.isSender {
                                messageEnvoye(message: msg)
                            } else {
                                messageRecu(message: msg)
                            }
                        }
                        Color.clear
                            .frame(height: 1)
                            .id("BOTTOM")
                    }
                }
                .padding(.horizontal)
                
                
                HStack {
                    TextField("Nouveau message", text: $message)
                        .padding()
                        .frame(width: 330, height: 50)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.gray.opacity(0.3), radius: 15, x: 2, y: 2)
                    
                    Button {
                        messageList.append(Message(texte: message, date: Date(), isSender: false))
                        message = ""
                        withAnimation {
                            proxy.scrollTo("BOTTOM", anchor: .bottom)
                        }
                    } label: {
                        Image(systemName: "paperplane.fill")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .foregroundStyle(Color.accentColor)
                    }
                }
                .padding(.horizontal, 20)
            }
            
            
            
            HStack {
                backButton()
                Image("restaurant")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                    .padding(.leading, 10)
                
                Text("Le clos d'Émile")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                Spacer()
            }
            .frame(width: 400, height: 150)
            .padding(.horizontal)
            .background(.ultraThinMaterial)
            .cornerRadius(10)
            .shadow(color: .gray.opacity(0.3), radius: 5, x: 2, y: 2)
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarBackButtonHidden(true)
        .toolbarVisibility(
            .hidden, for: .tabBar)
    }
    
}



//MARK: - PREVIEW
#Preview {
    Chat_Detail_User()
}
