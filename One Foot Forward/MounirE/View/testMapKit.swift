//
//  testMapKit.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 10/06/2025.
//


import SwiftUI
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct testMapKit: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522), // Paris
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )

    let places = [
        Place(name: "Tour Eiffel", coordinate: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945)),
        Place(name: "Louvre", coordinate: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376))
    ]

    @State private var selectedPlace: Place?

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: places) { place in
                MapAnnotation(coordinate: place.coordinate) {
                    Button(action: {
                        selectedPlace = place
                    }) {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.red)
                            .font(.title)
                    }
                }
            }
            .ignoresSafeArea()

            if let selectedPlace = selectedPlace {
                VStack {
                    
                    VStack(spacing: 10) {
                        Text(selectedPlace.name)
                            .font(.headline)
                        Button("Fermer") {
                            self.selectedPlace = nil
                        }
                        .foregroundColor(.blue)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding()
                }
            }
        }
    }
}


#Preview {
    testMapKit()
}
