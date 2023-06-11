//
//  ThemedModifier.swift
//  bud
//
//  Created by Felipe Passos on 09/06/23.
//

import Foundation
import SwiftUI

struct ThemedModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Theme.current.backgroundColor)
            .tint(Theme.current.brandColor)
            .accentColor(Theme.current.brandColor)
    }
}
