//
//  StackDetailInfoView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/04/28.
//

import SwiftUI

/// Stack의 각각의 종류별로 디테일한 정보를 설명하기 위해 사용되는 뷰
struct StackDetailInfoView: View {
    let stackInfo: StackInfo

    var body: some View {
        List {
            // MARK: 설명 섹션
            Section {
                Text(stackInfo.explanation)
                    .padding([.top, .bottom])
            }

            // MARK: 예시 섹션
            Section(header: Text("예시")) {
                stackInfo.exampleView
                    .padding([.top, .bottom])
            }

            // MARK: 활용 예시 섹션
            Section(header: Text("활용예제")) {
                stackInfo.caseView
                    .padding([.top, .bottom])
                    .listRowBackground(Color.white)
            }
        }
        .navigationTitle(Text(stackInfo.rawValue))
    }
}

struct StackDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
        StackComponentInfoView()
        StackDetailInfoView(stackInfo: .VStack)
    }
}

func a( number: [Int]) {
    var number = number
    number.append(1)
}
