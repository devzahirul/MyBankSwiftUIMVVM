//
//  ContentView.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MainView()
        NavigationView {
            PieChatView(colors: [Color(.chartExtraLightBlue), Color(.chartDarkBlue), Color(.chartBlue)], values: [
            10000, 32000, 500
            ], notes: [
            "Savings",
                "Investments",
                "Emergency funds"
            ])
            .hideNavigationBar()
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
