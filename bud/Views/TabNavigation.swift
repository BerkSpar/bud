//
//  TabNavigation.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct TabNavigation: View {
    @StateObject var global = Global.current
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Ínicio", systemImage: "house")
                }
                .tag(TabEnum.home)
            
            ExploreView()
                .tabItem {
                    Label("Descubra", systemImage: "leaf")
                }
                .tag(TabEnum.explore)
            
            
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
                .tag(TabEnum.profile)
        }
        .themed()
        .onChange(of: global.selectedTab, perform: { value in
            global.selectedTab = value
        })
        .navigationTitle("Resumo")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct TabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigation()
    }
}
