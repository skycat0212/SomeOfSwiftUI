//
//  VerticalAlignment+.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/03.
//

import SwiftUI

extension VerticalAlignment: CaseIterable, Hashable {
    public func hash(into hasher: inout Hasher) {

    }

    var alignmentName: String {
        switch self {
        case .top: return "top"
        case .center: return "center"
        case .bottom: return "bottom"
        case .firstTextBaseline: return "firstTextBaseline"
        case .lastTextBaseline: return "lastTextBaseline"
        default: return ""
        }
    }

    public static var allCases: [VerticalAlignment] {
        [.top, .center, .bottom, .firstTextBaseline, .lastTextBaseline]
    }
}
