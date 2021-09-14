//
//  VerifyAccountView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 14/9/21.
//

import SwiftUI

struct VerifyAccountView: View {
    
    @State var repeatPassword: String = ""
    
    @State var showResetPasswordView = false
    
    var body: some View {
        VStack(alignment: .leading) {
        
            
            Image(systemName: "xmark")
                .padding()
                .padding(.bottom, 30)
           
            Text("Verify account")
                .foregroundColor(Color(.primary))
                .font(.system(size: 35.0, weight: .bold, design: .default))
                .padding(.horizontal)
                .padding(.bottom, 5.0)
                
            Text("Please enter the CODE sent to your phone number in the boxes below.")
                .font(.system(size: 15.0))
                .padding(.horizontal)
                .padding(.bottom, 70)
            
            HStack {
                Spacer()
            InputViewWithLabel(label: "", placeHolder: "*", textFieldText: $repeatPassword)
                .frame(width: 50)
                InputViewWithLabel(label: "", placeHolder: "*", textFieldText: $repeatPassword)
                    .frame(width: 50)
                InputViewWithLabel(label: "", placeHolder: "*", textFieldText: $repeatPassword)
                    .frame(width: 50)
                InputViewWithLabel(label: "", placeHolder: "*", textFieldText: $repeatPassword)
                    .frame(width: 50)
            Spacer()
                
            }.padding()
            
            
            NavigationLink(
                destination: ResetPasswordView(),
                isActive: $showResetPasswordView,
                label: {
                    EmptyView()
                })
            
            Spacer()
            
            Button(action: {
                //Action
                showResetPasswordView = true
            }, label: {
                HStack {
                    Spacer()
                    Text("VERIFY PHONE")
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
            
           
        }.hideNavigationBar()
    }
}

struct VerifyAccountView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyAccountView()
    }
}
