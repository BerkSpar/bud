//
//  OnboardingView.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack(spacing: 16) {
            Spacer()
            
            Text("Bem-vindo.")
                .font(.system(size: 40, weight: .black))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(spacing: 24) {
                SimpleListTile(
                    iconColor: Color(hex: 0x7C8B62),
                    iconSystemName: "leaf.fill",
                    title: "Catalogue suas plantas",
                    subtitle: "Salve suas plantas e receba indicações de cuidado"
                )
                
                SimpleListTile(
                    iconColor: Color(hex: 0x8DBDC8),
                    iconSystemName: "drop.fill",
                    title: "Lembretes",
                    subtitle: "Notificações específicas para a necessidade de cada planta "
                )
                
                SimpleListTile(
                    iconColor: Color(hex: 0xE18787),
                    iconSystemName: "sparkles",
                    title: "Dicas personalizadas",
                    subtitle: "Possua um sistema que avalie e lhe dê feedbacks semanais"
                )
            }
            
            Spacer()
            
            NavigationLink {
                TabNavigation()
            } label: {
                Text("Vamos começar!")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding([.leading, .trailing], 32)
        .themed()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
