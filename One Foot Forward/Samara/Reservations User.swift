//
//  Reservations User.swift
//  One Foot Forward
//
//  Created by Samara Lima da Silva on 10/06/2025.
//

import SwiftUI

struct Reservations_User: View {
    
    @State private var date = Date()
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            calendar
            Spacer()
            TimeSlotsView()
        }
        .padding()
    }
    
    // MARK: - CALENDAR VIEW
    
    private var calendar: some View {
        
        
        VStack(alignment: .leading) {
            
            Text("Réservations")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.blackGreen)
            
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
        }
    }
}

// MARK: - Preview
#Preview {
    Reservations_User()
}
