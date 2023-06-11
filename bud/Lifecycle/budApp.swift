//
//  budApp.swift
//  bud
//
//  Created by Felipe Passos on 06/06/23.
//

import SwiftUI

@main
struct budApp: App {
    func app() -> some View {
        NavigationStack {
            OnboardingView()
        }
        .themed()
    }
    
    var body: some Scene {
        WindowGroup {
            app()
        }
    }
}

struct budApp_Previews: PreviewProvider {
    static var previews: some View {
        budApp().app()
    }
}
