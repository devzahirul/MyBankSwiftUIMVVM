//
//  NotificationView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 17/9/21.
//

import SwiftUI


struct NotificationRowView: View {
    var icon: AppStaticImages = .widthdraw_icon
    var background: Color = Color(.lightRed)
    var index: Int
    
    var body: some View {
        HStack {
            Image(icon)
                .frame(width: 24.0, height: 24.0)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(background.opacity(0.3))
                )
            VStack(alignment: .leading) {
                Text((index == 1 || index == 3) ? "Received money N2,000 from Dito" : "Withdrew N5,000")
                .font(.system(size: 16.0, weight: .bold, design: .default))
                Text("08:58 PM")
                    .font(.system(size: 14.0, weight: .light, design: .default))
            }
            Spacer()
        }
    }
}

struct NotificationView: View {
    var body: some View {
        VStack {
          
            
            ScrollView(.vertical) {
            HStack {
            Text("Today")
                .font(.system(size: 14.0, weight: .light, design: .default))
                .foregroundColor(.gray)
                Spacer()
            }.padding(.horizontal)
            .padding(.top)
            
            VStack {
                ForEach(0..<4) { i in
                    if i == 1 || i == 3 {
                        NotificationRowView(icon: .save_for_imergency, background: .white, index: i)
                            .padding()
                    }
               NotificationRowView(index: i)
                .padding()
                }
            }
           
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 0.5)
                    .foregroundColor(.gray.opacity(0.4))
            )
            .padding()
            
            HStack {
            Text("Yesterday")
                .font(.system(size: 14.0, weight: .light, design: .default))
                .foregroundColor(.gray)
                Spacer()
            }.padding(.horizontal)
            
            VStack {
                ForEach(0..<4) { i in
               NotificationRowView(index: i)
                .padding()
                }
            }
           
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 0.5)
                    .foregroundColor(.gray.opacity(0.4))
            )
            .padding()
            }
            Spacer()
                .navigationTitle(Text("Notifications"))
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
