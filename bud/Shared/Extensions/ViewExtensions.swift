//
//  ViewExtensions.swift
//  bud
//
//  Created by Felipe Passos on 09/06/23.
//

import Foundation
import SwiftUI

extension View {
    /// Aplies the current theme to some view.
    func themed() -> some View {
        modifier(ThemedModifier())
    }
    
    /// Aplies rounded corner to any side you want.
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
