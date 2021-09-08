//
//  LaunchingView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI

struct LaunchingView: View {
    
    @Binding var next: Bool
    
    //MARK:- UI
    var body: some View {
        VStack {
            Image(.bankMe)
                .resizable()
                .frame(width: 201.0, height: 38.14)
                .clipped()
                
        }//: VStack
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
                withAnimation {
                    next = true
                }
                
            }
        }
        
    }
}

struct LaunchingView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchingView(next: .constant(false))
    }
}
