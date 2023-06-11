//
//  Global.swift
//  bud
//
//  Created by Felipe Passos on 11/06/23.
//

import Foundation

@MainActor
class Global: ObservableObject {
    @Published var user: UserModel?
    @Published var selectedTab: TabEnum = .home
    
    static var current = Global()
    
    func login(username: String, password: String) {
        user = UserModel(
            name: "Pedro Augusto",
            password: "1234",
            rememberPassword: false,
            imageUrl: "https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1323&q=80"
        )
    }
}
