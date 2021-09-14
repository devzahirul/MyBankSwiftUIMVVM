//
//  Localizable.swift
//  Mybank
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import Foundation

protocol LocalizableKeyProtocol: RawRepresentable {
    var localized: String { get }
}

enum AppStrings: String {
    case testing
    enum OnBoarding: String, LocalizableKeyProtocol {
        case firstStepTitle
        case firstStepDescription
        case secondStepTitle
        case secondStepDescription
        case finalStepTitle
        case finalStepDescription
    }
}




extension LocalizableKeyProtocol {
    var localized: String {
        NSLocalizedString(String(reflecting: self).replacingOccurrences(of: "[A-Za-z]+\\.AppStrings\\.", with: "", options: .regularExpression), comment: "")
    }
}

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
