//
//  OnBoardingFirstStepView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI

struct OnBoardingFirstStepView<ContentView: View>: View {
    let title: String
    let description: String
    let image: AppStaticImages
    @Binding var moveNext: Bool
    var next: (() -> ContentView)?
    
   
    
    var body: some View {
        VStack {
            Image(image)
                .frame(width: 381, height: 381, alignment: .center)
            VStack(alignment: .leading) {
                Text(title)
                .font(.system(size: 30.0, weight: .bold, design: .default))
                .padding()
                
            Text(description)
                .font(.system(size: 17.0, weight: .light, design: .default))
                .padding()
                
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
            
            
        }
    }
}









struct OnBoardingFirstStepView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingFirstStepView(title: "Title", description: "Description", image: .bankMe, moveNext: .constant(false)) {
            Text("Second Step View")
        }
    }
}
