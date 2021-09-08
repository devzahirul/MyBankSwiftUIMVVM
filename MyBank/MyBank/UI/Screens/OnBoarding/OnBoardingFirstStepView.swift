//
//  OnBoardingFirstStepView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI

struct OnBoardingFirstStepView<ContentView: View>: View {
    
    var next: (() -> ContentView)?
    
    @State var moveNext = false
    
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
            
            if next != nil {
               NavigationLink(
                destination: next!(),
                isActive: $moveNext,
                label: {
                    EmptyView()
                })
            }
            
            Spacer()
            
            VStack {
                HStack {
                    Button(action: {
                        moveNext = true
                    }, label: {
                        Text("Next")
                    })
                }
            }
            
        }
    }
}









struct OnBoardingFirstStepView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingFirstStepView {
            Text("Second Step View")
        }
    }
}
