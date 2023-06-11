//
//  HomeController.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import Foundation

class HomeController: ObservableObject {
    @Published var plants: [PlantModel] = []
    @Published var bannerImageUrl = "https://veja.abril.com.br/wp-content/uploads/2016/05/planta-original1.jpeg?quality=90&strip=info&w=620&h=349&crop=1"
    
    init() {
        self.search("")
    }
    
    func search(_ searchText: String) {
        plants = PlantModel.index("")
    }
}
