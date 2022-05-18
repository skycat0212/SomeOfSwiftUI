//
//  Alignment+.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/03.
//

import SwiftUI

extension Alignment: Hashable {
    public func hash(into hasher: inout Hasher) {

    }
}

extension Alignment: CaseIterable {
    var alignmentName: String {
        switch self {
        case .topLeading: return "topLeading"
        case .top: return "top"
        case .topTrailing: return "topTrailing"

        case .leading: return "leading"
        case .center: return "center"
        case .trailing: return "trailing"

        case .bottomLeading: return "bottomLeading"
        case .bottom: return "bottom"
        case .bottomTrailing: return "bottomTrailing"

        default: return ""
        }
    }

    var alignmentNameAbbreviation: String {
        switch self {
        case .topLeading: return "tL"
        case .top: return "t"
        case .topTrailing: return "tT"

        case .leading: return "L"
        case .center: return "C"
        case .trailing: return "T"

        case .bottomLeading: return "bL"
        case .bottom: return "b"
        case .bottomTrailing: return "bT"

        default: return ""
        }
    }

    public static var allCases: [Alignment] {
        [.topLeading, .top, .topTrailing,
         .leading, .center, .trailing,
         .bottomLeading, .bottom, .bottomTrailing]
    }
}
