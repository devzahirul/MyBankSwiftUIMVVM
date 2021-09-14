//
//  ForgetPasswordView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 14/9/21.
//

import SwiftUI

struct ForgetPasswordView: View {
    
    @State var repeatPassword: String = ""
    
    @State var showVerificationView = false
    
    var body: some View {
        VStack(alignment: .leading) {
        
            
            Image(systemName: "xmark")
                .padding()
                .padding(.bottom, 30)
           
            Text("Forgot password?")
                .foregroundColor(Color(.primary))
                .font(.system(size: 35.0, weight: .bold, design: .default))
                .padding(.horizontal)
                .padding(.bottom, 5.0)
                
            Text("Please enter your phone number to recover your password.")
                .font(.system(size: 15.0))
                .padding(.horizontal)
                .padding(.bottom, 70)
            
           
            InputViewWithLabel(label: "Phone number", placeHolder: "+ 234 808 762 1236", textFieldText: $repeatPassword)
                .padding()
            
            
            Spacer()
            
            NavigationLink(
                destination: VerifyAccountView(),
                isActive: $showVerificationView,
                label: {
                    EmptyView()
                })
            
            Button(action: {
                showVerificationView = true
            }, label: {
                HStack {
                    Spacer()
                    Text("RECOVER PASSWORD")
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

struct ForgetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordView()
    }
}
