//
//  CreateNewAccountView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 14/9/21.
//

import SwiftUI



struct InputViewWithLabel: View {
    
    let label: String
    let placeHolder: String
    @Binding var textFieldText: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(label)
                .font(.system(size: 15.0, weight: .semibold, design: .default))
            
            TextField(placeHolder, text: $textFieldText)
                .padding()
                .background(RoundedRectangle(cornerRadius: 5.0)
                                .fill(Color(.lightingGray).opacity(0.25)
                                )
                )
        }
    }
}

struct CreateNewAccountView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var repeatPassword: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            Image(systemName: "xmark")
                .padding()
                .padding(.bottom, 30)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
           
            Text("Create Account")
                .foregroundColor(Color(.primary))
                .font(.system(size: 35.0, weight: .bold, design: .default))
                .padding(.horizontal)
                .padding(.bottom, 5.0)
                
            Text("Open a BankMe account with a few details.")
                .font(.system(size: 15.0))
                .padding(.horizontal)
                .padding(.bottom, 20)
            
            InputViewWithLabel(label: "Full name", placeHolder: "Joseph Kalu", textFieldText: $repeatPassword)
                .padding(.horizontal)
            InputViewWithLabel(label: "Phone number", placeHolder: "+ 234 808 762 1236", textFieldText: $repeatPassword)
                .padding(.horizontal)
            InputViewWithLabel(label: "Password", placeHolder: "*******", textFieldText: $repeatPassword)
                .padding(.horizontal)
            InputViewWithLabel(label: "Repeat password", placeHolder: "*******", textFieldText: $repeatPassword)
                .padding()
                .padding(.bottom, 94.0)
            
            
            Button(action: {
                //Action
            }, label: {
                HStack {
                    Spacer()
                    Text("CREATE YOUR ACCOUNT")
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

struct CreateNewAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewAccountView()
    }
}
