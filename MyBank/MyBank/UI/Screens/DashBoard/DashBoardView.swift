//
//  DashBoardView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 14/9/21.
//

import SwiftUI


struct DashBoardHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
        HStack {
            VStack(alignment: .leading, spacing: .zero) {
                Text("Hello Joseph")
                    .font(.system(size: 25.0, weight: .bold, design: .default))
                HStack {
                    Text("Good morning, remember to save today")
                        .font(.system(size: 13.0, weight: .light, design: .default))
                    Image(.dollar_image)
                        .frame(width: 20.0, height: 20.0)
                }
            }
            Spacer()
            Image(.profile)
                .overlay(
                Circle()
                    .stroke(lineWidth: 3)
                )
        }
            
        }
    }
}


struct TotalSavingCardView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack {
                    Text("Total Saving")
                        .font(.system(size: 15.0, weight: .bold, design: .default))
                        .foregroundColor(Color(.deepBlue))
                        .offset(x: 0.0, y: -20.0)
                    Text("N50,000.10")
                        .font(.system(size: 37.0, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                Spacer()
            }
            
        }.frame(height: 180.0)
        .background(RoundedRectangle(cornerRadius: 10.0).fill(Color(.primary)))
        
    }
}


struct TwoColumContainerView<LeftContentView: View, RightContentView: View>: View {
    
    let leftContent: () -> LeftContentView
    let rightContent: () -> RightContentView
    
    
    var body: some View {
        GeometryReader { g in
            HStack {
                leftContent()
                    .frame(width: (g.size.width - (8))/2, height: 60.0)
                    .background(RoundedRectangle(cornerRadius: 10.0)
                                    .fill(Color(.lightGreen))
                    )
                rightContent()
                    .frame(width: (g.size.width - (8))/2, height: 60.0)
                    .background(RoundedRectangle(cornerRadius: 10.0)
                                    .fill(Color(.lightRed))
                    )
                
            }
        }.frame(height: 60)
    }
}


struct SingleRowMenuView: View {
    
    let title: String
    let icon: AppStaticImages
    
    
    var body: some View {
        HStack(spacing: 20.0) {
            Image(icon)
                .padding()
                .background(Circle()
                                .fill(Color(.lightBlue)))
            
            Text(title)
                .font(.system(size: 15.0, weight: .light, design: .default))
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
        .overlay(
        RoundedRectangle(cornerRadius: 10.0)
            .stroke(lineWidth: 2.0)
            .foregroundColor(Color(.lightingGray))
        )
    }
}



struct DashBoardView: View {
    var body: some View {
        ScrollView(.vertical) {
        VStack(alignment: .leading) {
            DashBoardHeaderView()
                .padding(.vertical)
            TotalSavingCardView()
            
            TwoColumContainerView {
                HStack(spacing: 10.0) {
                    Image(.add_money)
                    Text("Add money")
                        .font(.system(size: 17.0, weight: .regular, design: .default))
                }
            } rightContent: {
                HStack(spacing: 10.0) {
                    Image(.widthdraw_money)
                    Text("Withdraw")
                        .font(.system(size: 17.0, weight: .regular, design: .default))
                }
            }
            
            
            
                HStack {
                    Text("Get your money working for you")
                        .font(.system(size: 17.0, weight: .bold, design: .default))
                }.padding(.vertical, 20.0)
            
            SingleRowMenuView(title: "Save for an emergency", icon: .save_for_imergency)
                .padding(.bottom, 20.0)
            SingleRowMenuView(title: "Invest your money", icon: .invest)
                .padding(.bottom, 20.0)
            
            HStack {
                Text("Ways to earn more money")
                    .font(.system(size: 17.0, weight: .bold, design: .default))
            }.padding(.vertical, 20.0)
            
            SingleRowMenuView(title: "Invite your friends and get a bonus", icon: .invite_friend)
                .padding(.bottom, 20.0)
            
            Spacer()
            
        }.padding(.horizontal)
        }.hideNavigationBar()
    }
}

struct DashBoardView_Previews: PreviewProvider {
    static var previews: some View {
        DashBoardView()
    }
}
