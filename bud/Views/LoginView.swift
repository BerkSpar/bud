//
//  LoginView.swift
//  bud
//
//  Created by Felipe Passos on 07/06/23.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var global = Global.current
    
    var body: some View {
        ZStack {
            Button {
                global.login(username: "", password: "")
                
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Entrar")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding([.leading, .trailing], 32)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .themed()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
