//
//  ImageCard.swift
//  bud
//
//  Created by Felipe Passos on 10/06/23.
//

import SwiftUI

struct ImageCard: View {
    let imageUrl: String
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: imageUrl)) { phase in
                phase.image?
                    .resizable()
            }
            
            VStack {
                Text(title)
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                    .bold()
                
                Text(subtitle)
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
            }
            .padding([.leading, .trailing, .bottom],16)
            .padding([.top], 8)
        }
        .background(.white)
        .frame(height: 170)
        .cornerRadius(8)
    }
}

struct ImageCard_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid(columns: [GridItem(), GridItem()]) {
            ImageCard(
                imageUrl: "https://blog.plantie.com.br/wp-content/uploads/2022/06/como-cuidar-da-jiboia-verde.jpg",
                title: "Jibóia",
                subtitle: "Folhagem"
            )
            
            ImageCard(
                imageUrl: "https://blog.plantie.com.br/wp-content/uploads/2022/06/como-cuidar-da-jiboia-verde.jpg",
                title: "Jibóia",
                subtitle: "Folhagem"
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(32)
        .themed()
    }
}
