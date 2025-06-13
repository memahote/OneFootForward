//
//  Chat User.swift
//  One Foot Forward
//
//  Created by Samara Lima da Silva on 13/06/2025.
//

import SwiftUI

//MARK: - MODEL

struct Contact: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let subtitle: String
}

struct Chat_User: View {

//MARK: - DATA SOURCE
    let contacts = [
        Contact(imageName: "restaurant", title: "Le clos d’Émile", subtitle: "Merci pour votre message, n’hésitez pas …"),
        Contact(imageName: "pilates", title: "Pilate’n co", subtitle: "Merci pour votre message, n’hésitez pas …"),
        Contact(imageName: "bateaux", title: "Bateaux mouche", subtitle: "Merci pour votre message, n’hésitez pas …"),
        Contact(imageName: "barcelone", title: "Ville de barcelone", subtitle: "Merci pour votre message, n’hésitez pas …"),
        Contact(imageName: "bike", title: "Mobiligo", subtitle: "Merci pour votre message, n’hésitez pas …"),
        Contact(imageName: "car", title: "Blablacar", subtitle: "Merci pour votre message, n’hésitez pas …"),
        Contact(imageName: "délices", title: "Les délices de Vanessa", subtitle: "Merci pour votre message, n’hésitez pas …"),
    ]
    
    //MARK: - BODY
    
    var body: some View {
        
        HStack {
            Text("Ma Messagerie")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.blackGreen)
                .padding()
            
            Spacer()
        }
            
        
        ScrollView {
            VStack(spacing: 16) {
                ForEach(contacts) { contact in
                    ContactCard(contact: contact)
                }
            }
            .padding()
        }
    }
}

//MARK: - CARD

struct ContactCard: View {
    let contact: Contact
    
    var body: some View {
        HStack(spacing: 16) {
            Image(contact.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(contact.title)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text(contact.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            
            Spacer()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
}

//MARK: - PREVIEW

#Preview {
    Chat_User()
}

