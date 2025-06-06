//
//  Mes réservations.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 02/06/2025.
//

import SwiftUI

struct Reservations: View {
    var body: some View {
        HStack {
            Image("Back")
            Spacer()
        }
        VStack {
            Image("Restaurant1")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            HStack {
                Text("Mes Réservations")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Image("Filter")
            }
        }
            
    }


#Preview {
    Reservations()
}

/*struct ListConversationView: View {
 var contact: OneContactExtractedView
 var body: some View {
     NavigationStack{
         ScrollView{
             VStack{
                 HStack {
                     Image("person1")
                         .resizable()
                         .scaledToFit()
                         .clipShape(.circle)
                         .frame(width: 90)
                     
                     VStack(alignment: .leading){
                         HStack{
                             Text(contact.conversation.person.name)
                                 .bold()
                             
                             Spacer()
                             
                             HStack{
                                 Circle()
                                     .foregroundStyle(.accent)
                                     .overlay(Text("1")
                                         .font(.caption))
                                     .frame(width: 20)
                                 
                                 Text("15:45")
                             }
                         }
                         .padding(.bottom, 4)
                         Text("dernier message envoyé")
                     }
                 }
                 .padding(8)
                 .frame(height: 90)
                 .overlay(
                     RoundedRectangle(cornerRadius: 20)
                         .stroke(.brownStroke , lineWidth: 1)
                 )
                 .padding(1)
                 
                 
             }
         }
         NavigationLink(destination: AdvertisementView(), label: {
             Text("coucou")
         })
         
         
     }
     .padding()
     
     
 }
}
*/



