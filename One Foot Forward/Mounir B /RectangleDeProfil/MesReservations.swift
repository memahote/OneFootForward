//
//  MesReservations.swift
//  One Foot Forward
//
//  Created by Mounir on 10/06/2025.
//

import SwiftUI

struct MesReservations: View {
    
    @State private var aVenir : pickerOptions = .aVenir
    
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

            }
            
            CustomPickerControl(selecteOption: $aVenir)
            Spacer()
        }
    }
    
    
    
    
    
}






#Preview {
        MesReservations()
            }
  
