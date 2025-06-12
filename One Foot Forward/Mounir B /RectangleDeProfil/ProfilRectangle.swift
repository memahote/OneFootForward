//
//  InfoRectangle.swift
//  One Foot Forward
//
//  Created by Mounir on 11/06/2025.
//
import SwiftUI

struct ProfilRectangle: View {
    
    var body: some View {
        
        
        ZStack{
            Rectangle()
                .foregroundColor(.gray.opacity(0.2))
                .cornerRadius(10)
            VStack {
                Text("Jan 04 2025")
                    .font(.title2)
                Divider()
                    .overlay(Color.blue)
                Text("Rammassage des déchets (1h)")
                HStack {
                    Image(.banniereRestaurant)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 140)
                        .cornerRadius(80)
                        .background(Color.green)
                        .clipShape(Circle())
                    Spacer()
                    Image(.time)
                    Text("1H")
//                    Spacer().frame(width: )
                }
                HStack {
                    Image(.location)
                    Text("102 Ocean Avenue")
                } .padding(.leading, 120)
            }
        }
        .padding(.horizontal)
        .frame(height: 197)
        
        
        
    }
    
    
    
    
    
    
    
    
    
}







#Preview {
    ProfilRectangle()
}
