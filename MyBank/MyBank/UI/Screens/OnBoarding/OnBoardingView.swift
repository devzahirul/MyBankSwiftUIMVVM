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
            Image(.thirdStepImage)
                .frame(width: 381, height: 381, alignment: .center)
            VStack(alignment: .leading) {
            Text("Invest your money")
                .font(.system(size: 30.0, weight: .bold, design: .default))
                .padding()
                
            Text("Get access to risk free investments that will multiply your income and pay high returns in few months")
                .font(.system(size: 17.0, weight: .light, design: .default))
                .padding()
                
            }//: Inner VStack
            .offset(x: 0.0, y: -30.0)
            
           
        }
    }
}

struct OnBoardingView: View {
    
    @Binding var hasCompletedOnBoarding: Bool
    
    @State var index = 0
    
    @State var showFirstStep = false
    @State var showSecondStep = false
    
    var body: some View {
        VStack {
            Spacer()
        NavigationView {
            OnBoardingFirstStepView(title: AppStrings.OnBoarding.firstStepTitle.localized, description: "We help you meet your savings target monthly and our emergency plans enable you save for multiple purposes", image: .firstStepImage, moveNext: $showFirstStep) {
                OnBoardingFirstStepView(title: "Withdraw your money", description: "With just your phone number, you can withdraw your funds at any point in time from any BankMe agent close to you.", image: .secondStepImage, moveNext: $showSecondStep) {
                    OnBoardingFinalStep {
                        hasCompletedOnBoarding = true
                    }.hideNavigationBar()
                }
                .hideNavigationBar()
            }
            .hideNavigationBar()
            
        }//: NavigationView
            Spacer()
            VStack {
                HStack {
                    
                    HStack(spacing: 10) {
                        ForEach(0..<3) { i in
                            RoundedRectangle(cornerRadius: i == index ? 5 : 10)
                            .fill(i == index ? Color(.primary) : .gray)
                            .frame(width: i == index ? 40 : 20, height: i == index ? 10 : 20)
                            
                        }
                    }.padding()
                    
                    
                    Spacer()
                    Button(action: {
                        //moveNext = true
                        withAnimation {
                            
                        
                        if index == 0 {
                            showFirstStep = true
                        }
                        if index == 1 {
                            showSecondStep = true
                        }
                            if index == 2 {
                                hasCompletedOnBoarding = true
                            }
                        index = index + 1
                        }
                    }, label: {
                        Text("Next")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal,20)
                            .background(Color(.primary))
                    })
                }.padding(.trailing, 16)
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(hasCompletedOnBoarding: .constant(false))
    }
}
