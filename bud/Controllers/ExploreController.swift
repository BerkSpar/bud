//
//  ExploreController.swift
//  bud
//
//  Created by Felipe Passos on 11/06/23.
//

import Foundation

class ExploreController: ObservableObject {
    @Published var plants: [PlantModel] = []
    @Published var searchText = ""
        
    init() {
        self.search()
    }
    
    func search() {
        plants = PlantModel.index(searchText)
    }
}
