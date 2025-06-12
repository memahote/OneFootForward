//
//  TransparentBlurView.swift
//  One Foot Forward
//
//  Created by Mounir Emahoten on 07/06/2025.
//

import SwiftUI

struct TransparentBlurView: UIViewRepresentable{
    
    var removeAllFilters : Bool = false
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        DispatchQueue.main.async {
            if let backdropLayer = uiView.layer.sublayers?.first{
                if removeAllFilters {
                    backdropLayer.filters = [ ]
                } else {
                    backdropLayer.filters?.removeAll { filter in
                        String(describing: filter) != "gaussianBlur"
                    }
                }
            }
        }
    }
}

#Preview {
    TransparentBlurView()
}
