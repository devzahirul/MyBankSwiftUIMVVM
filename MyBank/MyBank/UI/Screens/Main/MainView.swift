//
//  MainView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI

struct MainView: View {
    
    @State var showNext = false
    @State var completedOnBoarding = false
    
    var body: some View {
        VStack {
            if showNext == false {
                LaunchingView(next: $showNext)
            } else {
                if completedOnBoarding {
                    Text("Welcome DashBoardView!")
                } else {
                OnBoardingView(hasCompletedOnBoarding: $completedOnBoarding)
                }
            }
        }//: VStack
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
