//
//  Dashboard.swift
//  One Foot Forward
//
//  Created by Mounir on 06/06/2025.
//
import SwiftUI

struct Dashboard: View {
    
    var body: some View {
        NavigationStack {
            VStack  {
                ZStack {
                    Image(.banniereRestaurant)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 372, height: 176)
                        .cornerRadius(30)
                        .padding(.top)
                        .shadow(radius: 10)
                        .blur(radius: 1)
                    Text("Salt & Sea")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                
                VStack(alignment: .leading) {
                    Text("Dashboard")
                        .font(.title)
                        .padding(.top)
                    
                    
                    // 🔽 Graphique en haut
                    RingChartView()
                        .padding(.top)
                    
                    
                    // 🔽 Bouton déplacé en dessous du graphique
                    NavigationLink {
                        PrincipalPage()
                    } label: {
                        Text("Gerer Mes Réservations")
                            .padding(.horizontal, 15)
                            .padding(.vertical, 10)
                            .foregroundColor(.black)
                            .background(Color.accent)
                            .cornerRadius(10)
                    }

                  
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 20)
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            }
            
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}


#Preview {
    Dashboard()
}
