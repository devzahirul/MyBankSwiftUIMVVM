//
//  OnBoardingView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 13/9/21.
//

import SwiftUI


struct OnBoardingFinalStep: View {
    let onComplete: ()->Void
    
    var body: some View {
        VStack {
            Image(.firstStepImage)
                .frame(width: 381, height: 381, alignment: .center)
            VStack(alignment: .leading) {
            Text(AppStrings.OnBoarding.firstStepTitle.rawValue)
                .font(.system(size: 30.0, weight: .bold, design: .default))
                
            Text(AppStrings.OnBoarding.firstStepSubTitle.rawValue)
                .font(.system(size: 17.0, weight: .light, design: .default))
                
            }//: Inner VStack
            .offset(x: 0.0, y: -30.0)
            
            Spacer()
            
            VStack {
                HStack {
                    Button(action: onComplete, label: {
                        Text("Go!")
                    })
                }
            }
            
        }
    }
}

struct OnBoardingView: View {
    
    @Binding var hasCompletedOnBoarding: Bool
    
    var body: some View {
        NavigationView {
            OnBoardingFirstStepView {
                OnBoardingFirstStepView {
                    OnBoardingFinalStep {
                        hasCompletedOnBoarding = true
                    }.hideNavigationBar()
                }
                .hideNavigationBar()
            }
            .hideNavigationBar()
            
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(hasCompletedOnBoarding: .constant(false))
    }
}
