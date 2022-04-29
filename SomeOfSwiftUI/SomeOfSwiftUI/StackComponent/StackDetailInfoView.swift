//
//  StackDetailInfoView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/04/28.
//

import SwiftUI

/// Stack의 각각의 종류별로 디테일한 정보를 설명하기 위해 사용되는 뷰
struct StackDetailInfoView: View {
    let navigationTitle: String
    let explanation: String
    /// 해당 스택을 사용하면 어떻게 표현되는지 나타내는 뷰
    var exampleView: AnyView
    /// 해당 스택을 사용해서 어떤 것을 표현할 수 있는지 활용 사례를 나타내는 뷰
    var caseView: AnyView

    var body: some View {
        List {
            // MARK: 설명 섹션
            Section {
                Text(explanation)
                    .padding([.top, .bottom])
            }

            // MARK: 예시 섹션
            Section(header: Text("예시")) {
                exampleView
                    .padding([.top, .bottom])
            }

            // MARK: 활용 예시 섹션
            Section(header: Text("활용예제")) {
                caseView
                    .padding([.top, .bottom])
            }
        }
        .navigationTitle(Text(navigationTitle))
    }
}

struct StackDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
        StackComponentInfoView()
        StackDetailInfoView(navigationTitle: "HStack",
                            explanation: "HStack은 자식뷰를 수평 방향으로  정렬하여 보여주는 컨테이너 뷰입니다.",
                            exampleView: AnyView(Text("예시뷰")),
                            caseView: AnyView(Text("활용사례 뷰"))
        )
    }
}
