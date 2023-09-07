//
//  View.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import SwiftUI

extension View {
    func withLargeTitle() -> some View {
        modifier(CustomFont(size: 24, weight: .medium))
    }
    
    func withLargeHeadingFormat() -> some View {
        modifier(CustomFont(size: 20, weight: .bold))
    }
    
    func withHeadingFormat() -> some View {
        modifier(CustomFont(size: 18, weight: .semibold))
    }
    
    func withBoldParagraphFormat() -> some View {
        modifier(CustomFont(size: 12, weight: .medium))
    }
    
    func withParagrapghFormat() -> some View {
        modifier(CustomFont(size: 12, weight: .regular))
    }
    
    var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var screenHeight: CGFloat {
        UIScreen.main.bounds.height
    }
}
