//
//  HomeView.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            ForEach(Range(1...100)) { value in
                Text("Home")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
