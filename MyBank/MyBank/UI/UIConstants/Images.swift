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
    case dollar_image
    case profile
    case widthdraw_money
    case add_money
    case invest
    case save_for_imergency
    case invite_friend
}


extension Image {
    init(_ staticImage: AppStaticImages) {
        self.init(staticImage.rawValue)
    }
}
