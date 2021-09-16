//
//  PieChatView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 16/9/21.
//

import SwiftUI

struct PieSliceView: View {
    
    let pieSliceData: PieSliceData
    
    var body: some View {
        GeometryReader { g in
            Path { path in
                //draw arc
                
                //calculate the min height
                let width = min(g.size.width, g.size.height)
                let height = width
                
                let center = CGPoint(x: width*0.5, y: height*0.5)
                
                //move to center
                path.move(to: center)
                
                //draw arc
                path.addArc(center: center, radius: width*0.5, startAngle: Angle(degrees: -90) + pieSliceData.startAngle, endAngle: Angle(degrees: -90) + pieSliceData.endAngle, clockwise: false)
            }//:Path
            .fill(pieSliceData.color)
            
        }.aspectRatio(1.0, contentMode: .fit)
    }
}



struct PieSliceData {
    var startAngle: Angle
    var endAngle: Angle
    var color: Color
}


struct PieChatView: View {
    
    var colors: [Color]
    var values: [Int]
    var notes: [String]
    
    var slides: [PieSliceData] {
        let sum = values.reduce(0, +)
        
        var pieChartDataArray = [PieSliceData]()
        
        var endAngle = 0.0
        
        for(i, value) in values.enumerated() {
            let degree: Double = Double(value*360/sum)
            
            pieChartDataArray.append(PieSliceData(startAngle: Angle(degrees: endAngle),
                                                  endAngle: Angle(degrees: degree),
                                                  color: colors[i]))
            
            endAngle = degree
            
        }
        
        return pieChartDataArray
    }
    
    
    var body: some View {
        VStack {
        ZStack {
            ForEach(0..<values.count) { i in
                PieSliceView(pieSliceData: slides[i])
            }
            
            Circle()
                .fill(Color.white)
                .frame(width: 250)
                .overlay(
                Circle()
                    .stroke(lineWidth: 10)
                    .foregroundColor(Color(.chartExtraExtraLightBlue))
                )
            
            Text("$\(values.reduce(0, +))")
                .font(.system(size: 34.0, weight: .bold, design: .default))
            
        }//:ZStack
        .frame(height: 500)
        .padding(.horizontal)
            
            HStack {
                ForEach(0..<colors.count) { i in
                HStack {
                    Circle()
                        .fill(colors[i])
                        .frame(width: 20, height: 20)
                    Text(notes[i])
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                }
                Spacer()
            }//:HStack
            .padding()
        
            ScrollView(.vertical) {
                VStack {
                    ForEach(0..<values.count) { i in
                        VStack {
                        HStack {
                            Text(notes[i])
                                .font(.system(size: 23.0, weight: .bold, design: .default))
                            Spacer()
                        }
                            Rectangle()
                                .frame(height: 0.5)
                        }
                        HStack {
                            Text("1")
                                .font(.system(size: 15.0, weight: .bold, design: .default))
                            Spacer()
                            Text("\(values[i])")
                                .font(.system(size: 15.0, weight: .bold, design: .default))
                        }.padding(.vertical)
                    }
                }
            }.padding()
            
            Spacer()
        }
        
    }
}

struct PieChatView_Previews: PreviewProvider {
    static var previews: some View {
        PieChatView(colors: [Color(.chartExtraLightBlue), Color(.chartDarkBlue), Color(.chartBlue)], values: [
        10000, 32000, 500
        ], notes: [
        "Savings",
            "Investments",
            "Emergency funds"
        ])
    }
}
