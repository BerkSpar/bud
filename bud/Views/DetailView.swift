//
//  DetailView.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct DetailView: View {
    let plant: PlantModel
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: plant.imageUrl)) { phase in
                phase.image?
                    .resizable()
            }
            .frame(height: 250)
            
            VStack(spacing: 8) {
                Text(plant.name)
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                    .font(.title3)
                    .bold()
                
                Text(plant.description)
            }
            .padding(16)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationTitle(plant.name)
        .themed()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            plant: PlantModel(name: "Maranta tricolor", description: "A Maranta tricolor é uma planta de casa popular devido às suas folhas coloridas e exuberantes. Ela é fácil de cuidar e tolera bem a luz média. Além de adicionar beleza decorativa, suas folhas também se movem, fechando-se à noite. Mantenha o solo levemente úmido, evitando o encharcamento.", imageUrl: "https://blog.plantie.com.br/wp-content/uploads/2022/09/planta-calateia-1024x683.png")
        )
    }
}
