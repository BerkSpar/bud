//
//  ExploreView.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var controller = ExploreController()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField(text: $controller.searchText) {
                    Text("O que procura hoje?")
                }
                .textFieldStyle(.roundedBorder)
                .onChange(of: controller.searchText) { newValue in
                    controller.search()
                }
                .padding([.bottom], 16)
                
                LazyVGrid(
                    columns: [
                        GridItem(spacing: 16),
                        GridItem()
                    ],
                    spacing: 16
                ) {
                    ForEach(controller.plants) { plant in
                        NavigationLink {
                            DetailView(plant: plant)
                        } label: {
                            ImageCard(
                                imageUrl: plant.imageUrl,
                                title: plant.name,
                                subtitle: plant.description
                            )
                        }
                        .buttonStyle(.plain)
                        
                    }
                }
            }
            .padding([.leading, .trailing], 32)
            .themed()
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
