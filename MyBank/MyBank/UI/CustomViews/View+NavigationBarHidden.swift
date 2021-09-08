//
//  View+NavigationBarHidden.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 8/9/21.
//

import SwiftUI

extension View {
    func hideNavigationBar() -> some View {
        self
            .navigationBarTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
    }
}
