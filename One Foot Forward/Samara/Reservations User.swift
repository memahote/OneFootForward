//
//  Reservations User.swift
//  One Foot Forward
//
//  Created by Samara Lima da Silva on 10/06/2025.
//

import SwiftUI

struct Reservations_User: View {
    
    @State private var date = Date()
    @State private var hour = []
    
    // MARK: - BODY
    var body: some View {
        
        VStack {
            calendar
           
        }
        .padding()
        
    }
    
    // MARK: - CALENDAR VIEW
    private var calendar: some View {
        
        
        VStack(alignment: .leading) {
            
            Text("Réservations")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("Black - Green"))
            
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            
            
        }
    }
    
    
    //MARK: - TIME SLOTS VIEW
    

    
    
}
// MARK: - Preview
#Preview {
    Reservations_User()
}
