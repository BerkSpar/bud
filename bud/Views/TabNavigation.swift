//
//  TabNavigation.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct TabNavigation: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Ínicio", systemImage: "house")
                }
            
            ExploreView()
                .tabItem {
                    Label("Explorar", systemImage: "leaf")
                }
            
            
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }
        .tint(.green)
    }
}

struct TabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigation()
    }
}
