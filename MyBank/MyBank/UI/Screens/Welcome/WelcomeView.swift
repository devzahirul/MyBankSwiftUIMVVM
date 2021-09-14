//
//  WelcomeView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 14/9/21.
//

import SwiftUI





struct WelcomeView: View {
    @State var showLoginView = false
    @State var showCreateAccountView = false
    
    var body: some View {
        VStack {
            Spacer()
        Text("Welcome to BankMe")
            .font(.system(size: 30.0, weight: .bold, design: .default))
        Text("The bank for everyone.")
            .font(.system(size: 17.0))
            .padding(.bottom, 170)
            
            NavigationLink(
                destination: LoginView(),
                isActive: $showLoginView,
                label: {
                    EmptyView()
                })
            NavigationLink(
                destination: CreateNewAccountView(),
                isActive: $showCreateAccountView,
                label: {
                    EmptyView()
                })
            
            Button(action: {
                showCreateAccountView = true
            }, label: {
                HStack {
                    Spacer()
                    Text("CREATE YOUR FREE ACCOUNT")
                        .foregroundColor(.white)
                        .font(.system(size: 15.0, weight: .bold, design: .default))
                    Spacer()
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 5.0)
                        .fill(Color(.primary))
                )
            }).padding(.horizontal)
            .padding(.vertical, 4.0)
            
            Button(action: {
                showLoginView = true
            }, label: {
                HStack {
                    Spacer()
                    Text("LOG INTO YOUR ACCOUNT")
                        .foregroundColor(.black)
                        .font(.system(size: 15.0, weight: .bold, design: .default))
                    Spacer()
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 5.0)
                        .stroke(lineWidth: 2.0)
                        .foregroundColor(Color(.lightingGray))
                )
            }).padding(.horizontal)
            
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
