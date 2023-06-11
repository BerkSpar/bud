//
//  ProfileView.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var global = Global.current
    
    func unlogged() -> some View {
        return VStack {
            Image(systemName: "leaf.fill")
                .font(.system(size: 40))
                .foregroundColor(Theme.current.brandColor)
            
            Text("Você não veio encontrar suas plantinhas")
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(Theme.current.brandColor)
                .bold()
            
            NavigationLink {
                LoginView()
            } label: {
                Text("Entrar")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
            }
            .buttonStyle(.borderedProminent)
        }
    }
    
    func logged() -> some View {
        return VStack {
            Image(systemName: "leaf.fill")
                .font(.system(size: 40))
                .foregroundColor(Theme.current.brandColor)
            
            Text("Bem vindo, \(global.user?.name ?? "Plantinha")")
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(Theme.current.brandColor)
                .bold()
        }
    }
    
    
    var body: some View {
        VStack(spacing: 16) {
            if (global.user == nil) {
                unlogged()
            } else {
                logged()
            }
        }
        .padding([.leading, .trailing], 32)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .themed()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
