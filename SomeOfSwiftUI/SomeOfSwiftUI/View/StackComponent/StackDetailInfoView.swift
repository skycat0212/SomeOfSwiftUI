//
//  StackDetailInfoView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/04/28.
//

import SwiftUI

/// Stack의 각각의 종류별로 디테일한 정보를 설명하기 위해 사용되는 뷰
struct StackDetailInfoView: View {
    let stackType: StackType

    var body: some View {
        List {
            // MARK: 설명 섹션
            Section {
                StackCaseExplanationView(stackType: stackType)
                    .padding([.top, .bottom])
            }

            // MARK: 예시 섹션
            Section(header: Text("예시")) {
                HStack {
                    Spacer()
                    StackCaseExampleView(stackType: stackType)
                        .padding([.top, .bottom])
                    Spacer()
                }
                StackCaseUseExampleView(type: stackType)
                    .padding([.top, .bottom])
                    .listRowBackground(Color.white)

            }

        }
        .navigationTitle(Text(stackType.rawValue))
    }
}

struct StackDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        StackAlignmentExplanationView()
        BaseView()
        StackComponentInfoView()
        StackDetailInfoView(stackType: .VStack)
    }
}
