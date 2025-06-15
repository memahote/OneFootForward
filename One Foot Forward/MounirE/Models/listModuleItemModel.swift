//
//  listModuleItemModel.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 09/06/2025.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let coordinate: CLLocationCoordinate2D
}

struct ModuleItem: Identifiable {
    let id = UUID()
    let imageName: String
    let lieuName: String
    let description: String
    let reward: String
    let duration: String
    let impact: [String]
    let coordinate: CLLocationCoordinate2D
}

let sampleModulesList: [ModuleItem] = [
    ModuleItem(
        imageName: "Restaurant1",
        lieuName: "Brasserie de la Gare",
        description: "Venir en vélo ou en transport",
        reward: "Café gratuit",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.84907, longitude: 2.37098)
    ),
    ModuleItem(
        imageName: "RiverCleanup",
        lieuName: "Quais de Seine",
        description: "Ramassage de déchets en bord de Seine",
        reward: "Tote bag offert",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.85523, longitude: 2.35397)
    ),
    ModuleItem(
        imageName: "LibraryEvent",
        lieuName: "Bibliothèque municipale",
        description: "Atelier de réparation de vélos",
        reward: "Café offert",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.84404, longitude: 2.37004)
    ),
    ModuleItem(
        imageName: "LocalMarket",
        lieuName: "Marché Bio Batignolles",
        description: "Courses locales zéro déchet",
        reward: "Réduction de 5%",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.88839, longitude: 2.31697)
    ),
    ModuleItem(
        imageName: "Garden",
        lieuName: "Jardin partagé Saint-Blaise",
        description: "Participation à l’entretien des plantes",
        reward: "Légumes frais",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.86097, longitude: 2.40579)
    ),
    ModuleItem(
        imageName: "BikeRide",
        lieuName: "Parc de Bercy",
        description: "Balade à vélo collective anti-pollution",
        reward: "Boisson offerte",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.83442, longitude: 2.38067)
    ),
    ModuleItem(
        imageName: "Museum",
        lieuName: "Musée du Vivant",
        description: "Visite gratuite en covoiturage",
        reward: "Entrée 2 pour 1",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.84497, longitude: 2.35304)
    ),
    ModuleItem(
        imageName: "DoItYourself",
        lieuName: "Maison du Zéro Déchet",
        description: "Atelier DIY produits ménagers",
        reward: "Accès prioritaire",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.89454, longitude: 2.33404)
    ),
    ModuleItem(
        imageName: "TheaterEco",
        lieuName: "Théâtre Solidaire",
        description: "Spectacle éco-responsable",
        reward: "Place gratuite enfant",
        duration: "30 min",
        impact: ["Réduction de CO2", "Réduction de CO2"],
        coordinate: CLLocationCoordinate2D(latitude: 48.86004, longitude: 2.35104)
    )
]
