//
//  SimpleListTile.swift
//  bud
//
//  Created by Felipe Passos on 09/06/23.
//

import SwiftUI

struct SimpleListTile: View {
    let iconColor: Color
    let iconSystemName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack(spacing: 24) {
            Image(systemName: iconSystemName)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(iconColor)
            
            VStack(alignment: .leading) {
                Text(title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
                
                Text(subtitle)
            }
        }
    }
}

struct SimpleListTile_Previews: PreviewProvider {
    static var previews: some View {
        SimpleListTile(
            iconColor: .red,
            iconSystemName: "drop.fill",
            title: "Isso é um título",
            subtitle: "Aqui vai uma descrição grande para um burrito de carne"
        )
        .padding(32)
    }
}
