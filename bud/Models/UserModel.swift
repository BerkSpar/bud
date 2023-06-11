//
//  UserModel.swift
//  bud
//
//  Created by Felipe Passos on 06/06/23.
//

import Foundation

struct UserModel: Codable, Identifiable {
    var id: UUID = UUID()
    
    let name: String
    let password: String
    let rememberPassword: Bool
    let imageUrl: String?
}
