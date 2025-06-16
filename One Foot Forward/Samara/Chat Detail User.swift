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
    
    
//MARK: - BODY
    var body: some View {
        
                ZStack(alignment: .top) {
                    VStack {
                        ScrollViewReader { proxy in
                            ScrollView {
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

                            HStack {
                                TextField("Nouveau message", text: $message)
                                    .keyboardType(.default)
                                    .padding()

                                Button(action: {
                                    messageList.append(Message(texte: message, date: Date(), isSender: false)) // Tourist is now the sender
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
                            .frame(height: 70)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.gray.opacity(0.3), radius: 15, x: 2, y: 2)
                        }
                        .padding(.horizontal)
                    }

                    HStack {
                        header()
                    }
                }
            }

            func header() -> some View {
                VStack {
                    Spacer(minLength: 40)
                    HStack {
                        ZStack {
                            Image("restaurant")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                .padding()
                        }

                        Text("Le clos d'Émile")
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


//MARK: - PREVIEW
#Preview {
    Chat_Detail_User()
}
