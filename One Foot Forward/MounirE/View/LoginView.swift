//
//  LoginView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 15/06/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showTouriste = false
    @State private var showPro = false
    @State private var showError = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Text("Connexion")
                    .font(.largeTitle)
                    .padding()
                
                TextField("Nom d'utilisateur", text: $username)
                    .padding()
                    .frame(width: 250)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                SecureField("Mot de passe", text: $password)
                    .padding()
                    .frame(width: 250)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)

                Button("Se connecter") {
                    if username == "Touriste" && password == "1234" {
                        showTouriste = true
                        showError = false
                    } else if username == "infra" && password == "1234" {
                        showPro = true
                        showError = false
                    } else {
                        showError = true
                    }
                }
                .padding()
                .frame(width: 250)
                .background(Color.accent)
                .foregroundColor(.white)
                .cornerRadius(10)

                if showError {
                    Text("Identifiant ou mot de passe incorrect.")
                        .foregroundColor(.red)
                }
                
                NavigationLink("", destination: MainViewTourist(), isActive: $showTouriste)
                    .hidden()
                
                NavigationLink("", destination: MainViewTourist(), isActive: $showPro)
                    .hidden()
            }
            
        }
        
    }
}


#Preview {
    LoginView()
}
