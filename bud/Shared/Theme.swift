//
//  Theme.swift
//  bud
//
//  Created by Felipe Passos on 09/06/23.
//

import Foundation
import SwiftUI

class Theme: ObservableObject {
    @Published var brandColor: Color
    @Published var backgroundColor: Color
    @Published var contrastBackgroundColor: Color
    @Published var secondaryColor: Color
    @Published var shadowColor: Color
    @Published var bodyTextColor: Color
    
    init(
        brandColor: Color,
        backgroundColor: Color,
        contrastBackgroundColor: Color,
        secondaryColor: Color,
        shadowColor: Color,
        bodyTextColor: Color
    ) {
        self.brandColor = brandColor
        self.backgroundColor = backgroundColor
        self.contrastBackgroundColor = contrastBackgroundColor
        self.secondaryColor = secondaryColor
        self.shadowColor = shadowColor
        self.bodyTextColor = bodyTextColor
    }
    
    static var current: Theme = Theme(
        brandColor: Color(hex: 0x7C8B62),
        backgroundColor: Color(hex: 0xE5E8E1),
        contrastBackgroundColor: Color(hex: 0x11111),
        secondaryColor: Color(hex: 0x11111),
        shadowColor: Color(hex: 0x11111),
        bodyTextColor: Color(hex: 0x11111)
    )
}
