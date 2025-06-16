//
//  Profile User.swift
//  One Foot Forward
//
//  Created by Samara Lima da Silva on 06/06/2025.
//

import SwiftUI

struct Profile_User: View {
    @Environment(\.dismiss) var dismiss
    
    // MARK: - Data
    let currentXP: CGFloat = 300
    let totalXP: CGFloat = 1000
    
    let advantages = [
        Advantage(name: "Billet Gratuit", systemImage: "ticket"),
        Advantage(name: "Produits locaux", systemImage: "shippingbox"),
        Advantage(name: "Une heure de vélo", systemImage: "bicycle")
    ]
    
    let rewards = [
        Reward(name: "Café Gratuit", systemImage: "cup.and.heat.waves", description: "Ultilisable jusqu'au 20/12/2025 "),
        Reward(name: "Reduction de 10%", systemImage: "percent", description: "Ultilisable sur tous les articles chez")
    ]
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            VStack {
                headerView
                Spacer()
                avatarSection
                rankInfo
                progressBarSection
                Spacer()
                advantagesAndRewardsSection
                
            }
            .padding()
        }
    }
    
    // MARK: - View Sections
    
    private var headerView: some View {
        HStack {
            Spacer()
            NavigationLink {
                Chat_User()
            } label: {
                Image(systemName: "paperplane.fill")
                    .font(.title)
            }
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "gearshape.fill")
                    .font(.title)
            }
        }
    }
    
    private var avatarSection: some View {
        Image(.johnny)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.bronze, lineWidth: 10))
            .frame(width: 150, height: 150)
            .shadow(radius: 1)
    }
    
    private var rankInfo: some View {
        VStack {
            Text("Johnny")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blackGreen)
            
            Text("Bronze")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.bronze)
        }
    }
    
    private var progressBarSection: some View {
        VStack(alignment: .trailing) {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: 350, height: 35)
                    .shadow(radius: 4)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.accentColor)
                    .frame(width: (currentXP / totalXP) * 350, height: 35)
            }
            
            Text("\(Int(currentXP)) / \(Int(totalXP)) XP")
                .font(.subheadline)
                .foregroundColor(.gray)
            
        }
        
    }
    
    private var advantagesAndRewardsSection: some View {
        ScrollView (showsIndicators: false){
            VStack(alignment: .leading, spacing: 12) {
                
                // Advantages
                
                HStack {
                    Text("Avantage du rang")
                    Text("Bronze").foregroundStyle(.bronze)
                }
                
                ForEach(advantages) { item in
                    HStack () {
                        Image(systemName: item.systemImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                        
                        Text(item.name)
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 350, height: 80)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                }
                
                
                // Rewards
                
                Text("Récompenses obtenues")
                
                ForEach(rewards) { item in
                    HStack {
                        Image(systemName: item.systemImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                        
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Button("Utiliser") {}
                            .buttonStyle(.borderedProminent)
                    }
                }
                .padding()
                .frame(width: 350, height: 80)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 5)
                
            }
            .padding(.horizontal)
            .padding(.vertical)
        }
        
    }
    
}



// MARK: - Models

struct Advantage: Identifiable {
    var id = UUID()
    var name: String
    var systemImage: String
}

struct Reward: Identifiable {
    var id = UUID()
    var name: String
    var systemImage: String
    var description: String
    
}

// MARK: - Preview

#Preview {
    Profile_User()
}
