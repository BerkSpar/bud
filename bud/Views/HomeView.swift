//
//  HomeView.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var controller = HomeController()
    @StateObject var global = Global.current
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Resumo")
                    .font(.system(size: 34, weight: .heavy))
                
                Spacer()
                
                if (global.user != nil) {
                    AsyncImage(url: URL(string: Global.current.user?.imageUrl ?? "")) { phase in
                        phase.image?.resizable()
                    }
                    .frame(width: 40, height: 40)
                    .cornerRadius(100)
                    .onTapGesture {
                        global.selectedTab = .profile
                    }
                }
            }
            
            ZStack {
                AsyncImage(url: URL(string: controller.bannerImageUrl)) { phase in
                    phase.image?.resizable()
                }
                
                LinearGradient(
                    colors: [
                        .clear,
                        .black.opacity(0.4)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                Text("Suas plantinhas estão bem!")
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .bottomLeading
                    )
                    .padding(16)
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                
            }
            .cornerRadius(8)
            .frame(width: .infinity, height: 140)
            
            HStack {
                Text("Descubra novas plantas")
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                    .font(.title2)
                    .bold()
                
                NavigationLink {
                    ProfileView()
                } label: {
                    HStack {
                        Text("Ver mais")
                        
                        Image(systemName: "chevron.right")
                    }
                }
            }
            
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
        .navigationTitle("Ínicio")
        .padding([.leading, .trailing], 16)
        .themed()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
