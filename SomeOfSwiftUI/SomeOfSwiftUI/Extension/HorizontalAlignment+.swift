//
//  HorizontalAlignment+.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/03.
//

import SwiftUI

extension HorizontalAlignment: Hashable {
    public func hash(into hasher: inout Hasher) {

    }
}

extension HorizontalAlignment: CaseIterable {
    var alignmentName: String {
        switch self {
        case .leading: return "leading"
        case .center: return "center"
        case .trailing: return "trailing"
        default: return ""
        }
    }

    public static var allCases: [HorizontalAlignment] {
        [.leading, .center, .trailing]
    }
}
