//
//  LoginView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 14/9/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var repeatPassword: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    @State var showForgetPasswordView = false
    
    
    var body: some View {
        VStack(alignment: .leading) {
           
            
            Image(systemName: "xmark")
                .padding()
                .padding(.bottom, 30)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
           
            Text("Sign into your Account")
                .foregroundColor(Color(.primary))
                .font(.system(size: 35.0, weight: .bold, design: .default))
                .padding(.horizontal)
                .padding(.bottom, 5.0)
                
            Text("Log into your BankMe account")
                .font(.system(size: 15.0))
                .padding(.horizontal)
                .padding(.bottom, 20)
            
            
            InputViewWithLabel(label: "Phone number", placeHolder: "+ 234 808 762 1236", textFieldText: $repeatPassword)
                .padding(.horizontal)
            InputViewWithLabel(label: "Password", placeHolder: "*******", textFieldText: $repeatPassword)
                .padding(.horizontal)
            HStack(spacing: 4) {
                (Text("Have you forgotten your password?, ") + Text ("click here to recover it")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 15.0, weight: .regular, design: .default))
                    )
                    .font(.system(size: 15.0, weight: .light, design: .default))
                .onTapGesture {
                    showForgetPasswordView = true
                }
                
                
            }.padding(.horizontal)
            .padding(.bottom, 200.0)
            
            NavigationLink(
                destination: ForgetPasswordView(),
                isActive: $showForgetPasswordView,
                label: {
                    EmptyView()
                })
            
            
            Button(action: {
                //Action
            }, label: {
                HStack {
                    Spacer()
                    Text("LOG IN")
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
            
            HStack(spacing: 4) {
                Text("Do you already have a BankMe account?")
                    .font(.system(size: 15.0, weight: .light, design: .default))
                Button(action: {
                    
                }, label: {
                    Text("Sign in here")
                })
                
            }.padding(.horizontal)
        }.hideNavigationBar()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
