//
//  ExploreView.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        ScrollView {
            ForEach(Range(1...100)) { value in
                Text("Explore")
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
