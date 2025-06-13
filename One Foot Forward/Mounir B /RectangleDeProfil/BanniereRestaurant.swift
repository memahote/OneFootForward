//
//  MesReservations.swift
//  One Foot Forward
//
//  Created by Mounir on 10/06/2025.
//

import SwiftUI

struct BanniereRestaurant: View {
    
//    @State private var aVenir : pickerOptions = .aVenir
//    @State private var passées : pickerOptions = .passées
//    @State private var annulées : pickerOptions = .annulées
    
    var body: some View {
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
            HStack {
                Text("Mes Réservations")
                    .font(.title)
                    .padding(.top)
                    .padding(.leading)
                Spacer()
                Image(.filter)
                    .padding(.leading)
                    .padding(.top)
                Spacer()

            }
//            Spacer() 
        }
    }
    
    
}


#Preview {
        BanniereRestaurant()
            }
  
