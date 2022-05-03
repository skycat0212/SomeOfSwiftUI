//
//  StackComponentInfoView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/04/28.
//

import SwiftUI

struct StackComponentInfoView: View {
    let stackExplanation: String = """
    Stack은 자식뷰를 각각의 방향으로 정렬하여 보여주는 뷰입니다.
    컨테이너 뷰가 가질 수 있는 직접적인 하위 뷰는 10개로 제한되는 SwiftUI의 특성 상 10개까지의 직접적인 자식 뷰를 가질 수 있습니다.

    일반적인 Stack은 LazyStack과 달리, 한 번에 렌더링이 됩니다.
    따라서, 자식뷰가 적거나 지연된 렌더링을 원하지 않을 때 사용합니다.

    LazyStack은 화면에 렌더링을 해야할 때까지 각각의 항목 즉, 자식뷰를 생성하지 않습니다.
    """

    var body: some View {
        // TODO: seperator 길이 수정 필요
        List {
            Section(header: Text("개요")) {
                Image("StackViewHierarchy")
                    .resizable()
                    .scaledToFit()
                    .padding([.top, .bottom])
                Text(stackExplanation)
                    .font(.callout)
                    .padding([.top, .bottom])

            }
            .listRowSeparator(.hidden)

            Section(header: Text("Stack의 종류")) {
                NavigationLink("HStack") {
                    StackDetailInfoView(stackType: .HStack)
                }
                NavigationLink("VStack") {
                    StackDetailInfoView(stackType: .VStack)
                }
                NavigationLink("ZStack") {
                    StackDetailInfoView(stackType: .ZStack)
                }
            }

            Section(header: Text("LazyStack의 종류")) {
                NavigationLink("LazyHStack") {
                    StackDetailInfoView(stackType: .LazyHStack)
                }
                NavigationLink("LazyVStack") {
                    StackDetailInfoView(stackType: .LazyVStack)
                }
            }

            Section(header: Text("파라미터")) {
                NavigationLink("alginment") {
                    StackAlignmentExplanationView()
                }
                NavigationLink("") {

                }
            }

        }
        .listStyle(.sidebar)
        .navigationTitle("Stack")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct StackComponentInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
        StackComponentInfoView()
    }
}
