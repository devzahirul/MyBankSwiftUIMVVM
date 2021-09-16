//
//  AmountTyperView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 15/9/21.
//

import SwiftUI



struct NumberPadView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                HStack {
                    Text("1")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                    Spacer()
                    Text("2")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                    Spacer()
                    Text("3")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                }.frame(width: 270)
                Spacer()
            }.padding()
            
            HStack {
                Spacer()
                HStack {
                    Text("4")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                    Spacer()
                    Text("5")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                    Spacer()
                    Text("6")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                }.frame(width: 270)
                Spacer()
            }.padding()
            
            HStack {
                Spacer()
                HStack {
                    Text("7")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                    Spacer()
                    Text("8")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                    Spacer()
                    Text("9")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                }.frame(width: 270)
                Spacer()
            }
            
            HStack {
                Spacer()
                HStack {
                    Text("")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                    Spacer()
                    Text("    0")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                    Spacer()
                    Text("X")
                        .font(.system(size: 42.0, weight: .light, design: .default))
                }.frame(width: 270)
                Spacer()
            }.padding()
        }
    }
}

struct AmountTyperView: View {
    var body: some View {
        VStack(alignment: .leading) {

            HStack {
            Image(systemName: "xmark")
                .padding(.bottom, 60)
                Spacer()
            }

            Text("Let’s help you save")
                .font(.system(size: 30.0, weight: .bold, design: .default))
            Text("Enter the amount you want to save")
                .font(.system(size: 15.0, weight: .thin, design: .default))

            Spacer()
            HStack {
                Spacer()
            Text("$N 12034")
                .font(.system(size: 62.0, weight: .bold, design: .default))
                .foregroundColor(Color(.primary))
                Spacer()
            }
            Spacer()
            NumberPadView()

            Spacer()
        }.padding(.horizontal)
    }
}

struct AmountTyperView_Previews: PreviewProvider {
    static var previews: some View {
        AmountTyperView()
    }
}



