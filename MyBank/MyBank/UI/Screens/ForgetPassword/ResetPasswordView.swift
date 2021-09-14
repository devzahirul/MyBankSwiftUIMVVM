//
//  ResetPasswordView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 14/9/21.
//

import SwiftUI

struct ResetPasswordView: View {
    
    @State var repeatPassword: String = ""
    @State var showDashboardView = false
    
    var body: some View {
        VStack(alignment: .leading) {
        
            
            Image(systemName: "xmark")
                .padding()
                .padding(.bottom, 30)
           
            Text("Recover password")
                .foregroundColor(Color(.primary))
                .font(.system(size: 35.0, weight: .bold, design: .default))
                .padding(.horizontal)
                .padding(.bottom, 5.0)
                
            Text("Please enter your new password to continue")
                .font(.system(size: 15.0))
                .padding(.horizontal)
                .padding(.bottom, 70)
            
            
            InputViewWithLabel(label: "New password", placeHolder: "*********", textFieldText: $repeatPassword)
                .padding(.horizontal)
            InputViewWithLabel(label: "Repeat password", placeHolder: "*******", textFieldText: $repeatPassword)
                .padding(.horizontal)
            Spacer()
            
            
            NavigationLink(
                destination: DashBoardView(),
                isActive: $showDashboardView,
                label: {
                    EmptyView()
                })
            
            Button(action: {
                //Action
                showDashboardView = true
            }, label: {
                HStack {
                    Spacer()
                    Text("CHANGE PASSWORD")
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


struct ResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordView()
    }
}
