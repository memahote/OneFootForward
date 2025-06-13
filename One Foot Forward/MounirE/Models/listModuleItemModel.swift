//
//  listModuleItemModel.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 09/06/2025.
//

import Foundation

struct ModuleItem: Identifiable {
    let id = UUID()
    let imageName: String
    let lieuName: String
    let description: String
    let reward: String
    let duration: String
    let impact: [String]
}

let sampleModulesList: [ModuleItem] = [
    ModuleItem(
        imageName: "Restaurant1",
        lieuName: "Brasserie de la gare",
        description: "Venir en vélo ou en transport",
        reward: "Café gratuit",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "RiverCleanup",
        lieuName: "Quais de Seine",
        description: "Ramassage de déchets en bord de Seine",
        reward: "Tote bag offert",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "LibraryEvent",
        lieuName: "Bibliothèque municipale",
        description: "Atelier de réparation de vélos",
        reward: "Café offert",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "LocalMarket",
        lieuName: "Marché Bio Batignolles",
        description: "Courses locales zéro déchet",
        reward: "Réduction de 5%",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "RecyclingPoint",
        lieuName: "Point de recyclage République",
        description: "Apportez vos appareils usagés",
        reward: "Bon d'achat 10€",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "Garden",
        lieuName: "Jardin partagé Saint-Blaise",
        description: "Participation à l’entretien des plantes",
        reward: "Légumes frais",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "BikeRide",
        lieuName: "Parc de Bercy",
        description: "Balade à vélo collective anti-pollution",
        reward: "Boisson offerte",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "Museum",
        lieuName: "Musée du Vivant",
        description: "Visite gratuite en covoiturage",
        reward: "Entrée 2 pour 1",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "DoItYourself",
        lieuName: "Maison du Zéro Déchet",
        description: "Atelier DIY produits ménagers",
        reward: "Accès prioritaire",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    ),
    ModuleItem(
        imageName: "TheaterEco",
        lieuName: "Théâtre Solidaire",
        description: "Spectacle éco-responsable",
        reward: "Place gratuite enfant",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"]
    )
]

