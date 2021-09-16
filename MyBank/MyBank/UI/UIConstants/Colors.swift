//
//  Colors.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 13/9/21.
//

import SwiftUI


enum AppColors: String {
    case primary
    case deepBlue
    case lightGreen
    case lightRed
    case lightBlue
    case lightingGray
    case chartBlue
    case chartDarkBlue
    case chartExtraLightBlue
    case chartExtraExtraLightBlue
}


extension Color {
    init(_ color: AppColors) {
        self.init(color.rawValue)
    }
}
