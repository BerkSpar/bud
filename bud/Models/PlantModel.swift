//
//  PlantModel.swift
//  bud
//
//  Created by Felipe Passos on 06/06/23.
//

import Foundation

struct PlantModel: Codable, Identifiable {
    var id: UUID = UUID()
    
    let name: String
    let description: String
    let imageUrl: String
    
    private static func getLocalPlantList() -> [PlantModel] {
        return [
            PlantModel(name: "Jibóia", description: "A jiboia é uma planta de fácil cuidado, indicada para casas devido à sua tolerância à falta de luz e baixa manutenção. Além disso, ela contribui para a purificação do ar e possui um efeito decorativo com suas folhas grandes e vistosas.", imageUrl: "https://blog.plantie.com.br/wp-content/uploads/2022/06/como-cuidar-da-jiboia-verde.jpg"),
            
            PlantModel(name: "Samambaia", description: "A samambaia é uma planta popular para casas devido à sua beleza e facilidade de cuidado. Ela é conhecida por sua capacidade de se adaptar a diferentes níveis de luz, tornando-se uma escolha versátil para diferentes ambientes domésticos. Além disso, as samambaias ajudam a purificar o ar, removendo toxinas e melhorando a qualidade do ambiente interno.", imageUrl: "https://casa.abril.com.br/wp-content/uploads/2022/01/samambaia-americana.webp?w=940"),
            
            PlantModel(name: "Maranta tricolor", description: "A Maranta tricolor é uma planta de casa popular devido às suas folhas coloridas e exuberantes. Ela é fácil de cuidar e tolera bem a luz média. Além de adicionar beleza decorativa, suas folhas também se movem, fechando-se à noite. Mantenha o solo levemente úmido, evitando o encharcamento.", imageUrl: "https://blog.plantie.com.br/wp-content/uploads/2022/09/planta-calateia-1024x683.png"),
            
            PlantModel(name: "Zamioculca", description: "A Zamioculca, também conhecida como planta-zamioculca, é uma planta de casa de fácil cuidado. Suas folhas brilhantes e verde-escuras adicionam um toque elegante aos espaços internos. A Zamioculca é popular por tolerar baixa luminosidade e ter baixa exigência de rega, tornando-a uma escolha prática para casas.", imageUrl: "https://www.tuacasa.com.br/wp-content/uploads/2019/02/zamioculca-000-1200x900.jpg"),
            
            PlantModel(name: "Pilea", description: "A Pilea, também conhecida como planta-chinesa-do-dinheiro, é uma planta de casa de fácil cuidado. Suas folhas redondas e distintivas adicionam charme aos ambientes internos. A Pilea adapta-se bem a diferentes níveis de luz e requer regas moderadas. É uma planta de crescimento rápido e fácil de propagar, ideal para espaços menores.", imageUrl: "https://media.gazetadopovo.com.br/haus/2019/11/pilea-planta-decoracao-divulgacao-200f2070.jpg"),
            
            PlantModel(name: "Lírio da paz", description: "O lírio da paz, ou Spathiphyllum, é uma planta de casa de fácil cuidado e baixa manutenção. Suas folhas verdes vibrantes e flores brancas elegantes adicionam beleza aos ambientes internos. Ele pode tolerar diferentes níveis de luz e adapta-se bem a ambientes com ar condicionado.", imageUrl: "https://s2.glbimg.com/l3MH426cwZCJOSTK4oPIH1LSNYQ=/e.glbimg.com/og/ed/f/original/2021/08/19/lirio-da-paz.jpg"),
            
            PlantModel(name: "Fitônia", description: "A fitônia, também conhecida como planta-mosaico, é uma planta de casa de fácil cuidado e baixa manutenção, tornando-a uma escolha popular. Suas folhas coloridas e distintas adicionam um toque de cor e beleza aos ambientes internos. A fitônia tolera bem condições de luz média a baixa, tornando-a adequada para diferentes áreas da casa.", imageUrl: "https://www.petz.com.br/blog/wp-content/uploads/2022/12/fitonia-1280x720.jpg"),
            
            PlantModel(name: "Pacová", description: "O pacová, também conhecido como planta-bananeira, é uma planta de casa de fácil cuidado e baixa manutenção, tornando-a uma escolha popular. Suas folhas grandes e exuberantes adicionam um toque tropical aos espaços internos. O pacová tolera bem condições de luz média a brilhante, tornando-o versátil em termos de posicionamento na casa.", imageUrl: "https://www.tuacasa.com.br/wp-content/uploads/2020/04/pacova.png")
        ]
    }
    
    static func index(_ searchText: String) -> [PlantModel] {
        if (searchText.isEmpty) {
            return getLocalPlantList()
        }
        
        var result: [PlantModel] = getLocalPlantList().filter { plant in
            plant.name.lowercased().contains(searchText.lowercased()) ||
            plant.description.lowercased().contains(searchText.lowercased())
        }
        
        return result
    }
}
