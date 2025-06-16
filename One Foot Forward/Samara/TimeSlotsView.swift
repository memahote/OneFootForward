//
//  TimeSlotsView.swift
//  One Foot Forward
//
//  Created by Samara Lima da Silva on 12/06/2025.
//

import SwiftUI

struct TimeSlotsView: View {
    
    @State private var selectedTime: String? = nil

    let startHour = 9
    let endHour = 18
    let intervalMinutes = 30
   
    let disabledSlots: [String] = ["09:00", "11:00", "13:00", "13:30"]

  //MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("HORAIRES")
                .font(.title3)
                .fontWeight(.bold)

            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 3), spacing: 15) {

    //MARK: - LOGIC FOR TIME SLOTS
                    ForEach(generateTimeSlots(), id: \.self) { time in
                        let isDisabled = disabledSlots.contains(time)

                        Button(action: {
                            if !isDisabled {
                                selectedTime = time
                            }
                        }) {
                            Text(time)
                                .foregroundColor(isDisabled ? .gray : (selectedTime == time ? .white : .black))
                                .frame(maxWidth: .infinity, minHeight: 40)
                                .background(
                                    isDisabled ? Color.gray.opacity(0.2) :
                                        (selectedTime == time ? Color.accentColor : Color.white)
                                )
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray.opacity(0.5), lineWidth: isDisabled ? 0 : 1)
                                )
                        }
                        .disabled(isDisabled)
                    }
                }.padding(.bottom, 9.0)
            }
            //MARK: - BUTTON
                        Button("Je réserve"){
                            //TODO: - button logic
                        }
                        .padding()
                        .font(.headline)
                        .frame(width: 120, height: 50)
                        .background(.accent)
                        .foregroundColor(.white)
                        .cornerRadius(10)
        }
        .padding()
    }
    
    //MARK: - FUNCTION IMPLEMENTATION
    
    func generateTimeSlots() -> [String] {
        var times: [String] = []
        for hour in startHour..<endHour {
            for minute in stride(from: 0, to: 60, by: intervalMinutes) {
                let formatted = String(format: "%02d:%02d", hour, minute)
                times.append(formatted)
            }
        }
        return times
    }
}

#Preview {
    TimeSlotsView()
}

