//
//  reservationView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 09/06/2025.
//

import SwiftUI

enum pickerOptionsRes: String, CaseIterable {
    case avenir = "A venir"
    case passe = "Pasées"
    case annuler = "Annulées"
    
    
}

struct CustomPickerControlRes: View {
    
    @Binding var selecteOption: pickerOptionsRes
    
    
    var body: some View {
        HStack (spacing: 0){
            ForEach(pickerOptionsRes.allCases, id: \.self) { option in
                let isSelected = selecteOption == option
                
                Button {
                    selecteOption = option
                } label: {
                    HStack {
                        
                        Text(option.rawValue)
                        
                        
                    }
                    .frame(maxWidth: 175)
                    .padding(.vertical, 10)
                    .font(.system(size: 20))
                    .foregroundStyle(isSelected ? Color.white : Color.primary)
                    .background(isSelected ? Color.accent : Color.clear)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                }
                
                
                
                
                
            }
        }
        .background(.gray.opacity(0.6))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

struct reservationView: View {
    
    @State private var selecteOption: pickerOptionsRes = .avenir
    @State private var futureEvents = sampleModulesList
    @State private var canceledEvents = cancelModuleList
    @State private var pastEvents = passedModuleList
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 12) {
                
                HStack {
                    Text("Mes Réservations")
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                CustomPickerControlRes(selecteOption: $selecteOption)
                    .padding(.horizontal)
                
                ScrollView (showsIndicators: false){
                    
                    if selecteOption == .avenir {
                        ForEach(futureEvents) { item in
                            reservationCard(item: item, color: .white, pickerOptions: selecteOption){
                                futureEvents.removeAll { $0.id == item.id }
                                canceledEvents.append(item)
                            }
                            
                        }
                    }
                    
                    else if selecteOption == .passe {
                        ForEach(passedModuleList) { item in
                            reservationCard(item: item, color: Color.accent.opacity(0.7), pickerOptions: selecteOption)
                        }
                    }
                    
                    else if selecteOption == .annuler {
                        ForEach(canceledEvents) { item in
                            reservationCard(item: item, color: Color.gray.opacity(0.7), pickerOptions: selecteOption)
                        }
                    }
                    
                }
            }
        
    }
}

#Preview {
    reservationView()
}
