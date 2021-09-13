//
//  Images.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI

enum AppStaticImages: String {
    case bankMe
    case firstStepImage
    case secondStepImage
    case thirdStepImage
}


extension Image {
    init(_ staticImage: AppStaticImages) {
        self.init(staticImage.rawValue)
    }
}
