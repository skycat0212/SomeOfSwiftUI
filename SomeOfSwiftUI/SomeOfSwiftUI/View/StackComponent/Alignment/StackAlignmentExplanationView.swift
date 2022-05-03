//
//  StackAlignmentExplanationView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/02.
//

import SwiftUI

struct StackAlignmentExplanationView: View {

    var body: some View {
        List {
            Section {
                Text("각각의 스택은 자식뷰들을 정렬할 방향을 파라미터로 전달 받을 수 있습니다.")
                    .font(.callout)
                    .padding([.top, .bottom], 5)
            }

            Section {
                Text("HStack과 LazyHStack은 alignment 값으로 VerticalAlignment 타입을 받습니다.")
                    .font(.callout)
                    .padding([.top, .bottom], 5)
                NavigationLink("VerticalAlignment") {
                    VerticalAlignmentExplanationView()
                        .navigationBarTitleDisplayMode(.large)
                }
            }

            Section {
                Text("VStack과 LazyVStack은 alignment 값으로  HorizontalAlignment 타입을 받습니다.")
                    .font(.callout)
                    .padding([.top, .bottom], 5)
                NavigationLink("HorizontalAlignment") {
                    HorizontalalignmentExplanationView()
                        .navigationBarTitleDisplayMode(.large)
                }
            }

            Section {
                Text("ZStack은 alignment 값으로 Alignment 타입을 받습니다.")
                    .font(.callout)
                    .padding([.top, .bottom], 5)
                NavigationLink("Alignment") {
                    AlignmentExplanationView()
                }
            }

        }
        .navigationTitle("Alignment")
        .navigationBarTitleDisplayMode(.large)
    }

}

struct StackAlignmentExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        StackAlignmentExplanationView()
    }
}
