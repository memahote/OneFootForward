//
//  PrincipalPage.swift
//  One Foot Forward
//
//  Created by Mounir on 13/06/2025.
//

import SwiftUI


struct PrincipalPage: View {
    
    @State private var customPickerControl:pickerOptions = pickerOptions.aVenir
    
    
    
    var body: some View {
        VStack {
            BanniereRestaurant()
            CustomPickerControl(selecteOption: $customPickerControl)

            switch customPickerControl {
            case .aVenir:
                ReservationAvenir()
            case .passées:
                ReservationPassées()
            case .annulées:
                ReservationAnnulées()
                
            }

        }
        .padding()
        .toolbarVisibility(
            .hidden, for: .tabBar)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton())


    }
    
}

#Preview {
    PrincipalPage()
}
