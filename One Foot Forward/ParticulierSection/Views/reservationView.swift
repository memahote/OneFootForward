//
//  reservationView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 09/06/2025.
//

import SwiftUI

struct reservationView: View {
    
    @State private var selecteOption: pickerOptions = .aVenir
    @State private var futureEvents = sampleModulesList
    @State private var canceledEvents = cancelModuleList
    @State private var pastEvents = passedModuleList
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 12) {
                
                HStack {
                    Text("Mes Réservations")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                CustomPickerControl(selecteOption: $selecteOption)

                
                ScrollView (showsIndicators: false){
                    
                    if selecteOption == .aVenir {
                        ForEach(futureEvents) { item in
                            reservationCard(item: item, color: .white, pickerOptions: selecteOption){
                                futureEvents.removeAll { $0.id == item.id }
                                canceledEvents.append(item)
                            }
                            
                        }
                    }
                    
                    else if selecteOption == .passées {
                        ForEach(passedModuleList) { item in
                            reservationCard(item: item, color: Color.accent.opacity(0.7), pickerOptions: selecteOption)
                        }
                    }
                    
                    else if selecteOption == .annulées {
                        ForEach(canceledEvents) { item in
                            reservationCard(item: item, color: Color.gray.opacity(0.7), pickerOptions: selecteOption)
                        }
                    }
                    
                }
            }
            .padding(.horizontal)
        }
            
    }
}

#Preview {
    reservationView()
}
