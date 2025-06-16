//
//  Reservation1.swift
//  One Foot Forward
//
//  Created by Mounir on 11/06/2025.
//

import SwiftUI

enum pickerOptions: String, CaseIterable {
    case aVenir = "À venir"
    case passées = "Passées"
    case annulées = "Annulées"
    
    
}

struct CustomPickerControl: View {
    
    @Binding var selecteOption: pickerOptions
    
    
    var body: some View {
        HStack (spacing: 0){
            ForEach(pickerOptions.allCases, id: \.self) { option in
                let isSelected = selecteOption == option
                
                Button {
                    selecteOption = option
                    
                } label: {
                    HStack {
                        
                        Text(option.rawValue)
                        
                        
                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .cornerRadius(10)
                    .foregroundStyle(isSelected ? Color.white : Color.primary)
                    .background(isSelected ? Color.accent : Color.clear)
                }
                
                
            }
        }
        .background(.gray.opacity(0.6))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

#Preview {
    @Previewable @State var selecteOption: pickerOptions = .aVenir
    CustomPickerControl(selecteOption: $selecteOption)
}
