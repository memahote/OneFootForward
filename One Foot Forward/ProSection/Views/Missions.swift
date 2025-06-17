//
//  Mes réservations.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 02/06/2025.
//

import SwiftUI

struct Missions: View {
    
    @State var date = Date()
    @State var newMission: typeMissions

    
    @State var missionsString: [typeMissions] = missionList
    
    
    var body: some View {
        NavigationStack{
            header()
        }
    }
    
    
    
    
    func header() -> some View {
        VStack{
            ScrollView{
                HStack{
                    // Titre principal
                    Text("Mes missions")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
                
                // Bouton pour valider la mission
                NavigationLink(destination: ScanQRCode()){
                    
                 
                    Text("Valider une mission")
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .foregroundColor(.black)
                        .background(Color.accent)
                        .cornerRadius(10)
                }
                Spacer(minLength: 20)
                
                // ScrollView mission
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 10){
                        missionsCards(missionsString)
                    }
                    .padding()
                }
                
                // Bouton Ajouter une mission
                
                    NavigationLink(destination: AjouterUneMission(
                        newMission: typeMissions(
                            missionImage: "",
                            missionName: "",
                            missionDescription: "",
                            missionCategory: "Mobilité",
                            missionReward: "",
                            missionBooking: false
                        ), missionList: $missionsString
                    ))
                {
                    
                    HStack{
                        Text("Ajouter une mission")
                            .padding()
                        
                        Spacer()
                        
                    }.frame(width: 370, height: 45)
                        .padding(.vertical, 10)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .black.opacity(0.10), radius: 20, x: 0, y: 2)
                }
                Spacer(minLength: 20)
                
                calendrier()
                Spacer(minLength: 20)
                
                // Bouton modifier le calendrier
                Button(action: {}) {
                    
                    HStack{
                        Text("Modifier le calendrier")
                            .padding()
                        
                        Spacer()
                        
                    }.frame(width: 370, height: 45)
                        .padding(.vertical, 10)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .black.opacity(0.10), radius: 20, x: 0, y: 2)
                }
                Spacer(minLength: 20)
                
                
                
                // Fin de ma scrollview
            }
            // Fin de mon Vstack principal
        }
        // Fin de ma func header
    }
    
    // Cartes mission liste
    
    func missionsCards(_ missionsString: [typeMissions]) -> some View {
        
        // Logique
        return ForEach(0..<missionsString.count, id: \.self) { index in
            ZStack{
                
                
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(.blackGreen), Color(.eggShell)]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 150, height: 200)
                    .cornerRadius(20)
                
                
                Image(missionsString[index].missionImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 200)
                    .cornerRadius(20)
                    .blur(radius: 0.80)
                    .opacity(0.50)
                
                
                
                
                VStack(alignment: .leading){
                    Spacer(minLength: 150)
                    HStack{
                        Text(missionsString[index].missionName)
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                            .frame(width: 120, height: 50)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)

                        Spacer(minLength: 30)
                    }
                    
                }
            }
            //Fin ForEach
        }
        // Fin Mission card
        
    }
    func calendrier() -> some View {
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
        // Fin calendrier
    }
    
    
}









#Preview {
    Missions(newMission: typeMissions(
        missionImage: "",
        missionName: "",
        missionDescription: "",
        missionCategory: "Mobilité",
        missionReward: "",
        missionBooking: false
    )
)
}




