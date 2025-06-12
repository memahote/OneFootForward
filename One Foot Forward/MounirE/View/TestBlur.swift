//
//  TestBlur.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 06/06/2025.
//

import SwiftUI

struct TestBlur: View {
    @State private var blurType : BlurType = .freestyle
    
    var body: some View {
        GeometryReader {
            
            let safeArea = $0.safeAreaInsets
            ScrollView {
                
                
                ZStack{
                    
                    
                    
                    VStack (spacing: 15){
                        GeometryReader {
                            
                            let size = $0.size
                            
                            
                            Image(.restaurant1)
                                .resizable()
                                .scaledToFill()
                                .frame(width: size.width, height: size.height)
                                .clipShape(.rect(cornerRadius: 20))
                            
                        }
                        .frame(height: 500)
                        
                        TransparentBlurView(removeAllFilters: false)
                            .blur(radius: 10)
                            .padding([.horizontal, .top], -30)
                            .frame(height: 100 + safeArea.top)
                            .visualEffect { view, proxy in
                                view
                                    .offset(y: (proxy.bounds(of: .scrollView)?.minY ?? 0))
                            }
                        
                    }
                    .padding()
                }
                
                
            }.scrollIndicators(.hidden)
                .ignoresSafeArea(.container, edges: .top)
        }
    }
}


// Blur state

enum BlurType: String, CaseIterable {
    case clipped = "Clipped"
    case freestyle = "Free style"
}

#Preview {
    ContentView()
}
