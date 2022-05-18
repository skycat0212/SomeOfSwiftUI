//
//  StackCaseExplanationView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/02.
//

import SwiftUI

struct StackCaseExplanationView: View {
    let stackType: StackType
    var explanation: String {
        switch stackType {
        case .HStack:
            return "\(stackType)은 자식뷰를 수평 방향으로 정렬하여 보여주는 컨테이너 뷰입니다."
        case .VStack:
            return "\(stackType)은 자식뷰를 수직 방향으로 정렬하여 보여주는 컨테이너 뷰입니다."
        case .ZStack:
            return "\(stackType)은 자식뷰를 두 축에 정렬하여 보여주는 컨테이너 뷰입니다."
        case .LazyHStack:
            return "\(stackType)은 필요한 만큼만 자식뷰를 생성하여 수평 방향으로 정렬하여 보여주는 컨테이너 뷰입니다."
        case .LazyVStack:
            return "\(stackType)은 필요한 만큼만 자식뷰를 생성하여 수직 방향으로 정렬하여 보여주는 컨테이너 뷰입니다."
        }
    }

    var body: some View {
        Text(explanation)
    }
}

struct StackCaseExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        StackCaseExplanationView(stackType: .VStack)
    }
}
