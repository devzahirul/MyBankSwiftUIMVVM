//
//  MainView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI

struct MainView: View {
    
    @State var showNext = false
    
    var body: some View {
        VStack {
            if showNext == false {
                LaunchingView(next: $showNext)
            } else {
                NavigationView {
                    OnBoardingFirstStepView {
                        OnBoardingFirstStepView {
                            OnBoardingFirstStepView {
                                Text("End")
                                    .hideNavigationBar()
                            }.hideNavigationBar()
                        }
                        .hideNavigationBar()
                    }
                    .hideNavigationBar()
                    
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
