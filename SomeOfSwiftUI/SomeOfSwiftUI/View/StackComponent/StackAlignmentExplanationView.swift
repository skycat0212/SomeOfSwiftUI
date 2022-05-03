//
//  StackAlignmentExplanationView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/02.
//

import SwiftUI

struct StackAlignmentExplanationView: View {
    @State private var hStackAlginment: VerticalAlignment = VerticalAlignment.top

    var body: some View {
        List {
            Section {
                Text("각각의 스택은 자식뷰들을 정렬할 방향을 파라미터로 전달 받을 수 있습니다.")
                    .padding()
            }

            Section(header: Text("HStack과 LazyHStack")) {
                Text("HStack과 LazyHStack은 alignment의 대한 값으로 VerticalAlignment 타입의 값을 받습니다.")
                    .padding(.top)
                Text(
"""
VerticalAlignment에서는
    top
    center
    bottom
    firstTextBaseline
    lastTextBaseline
으로 다섯 개의 가이드를 제공합니다.

top은 뷰의 상단의 가장자리를 나타냅니다
center는 뷰의 수직 방향의 중심을 나타냅니다.
bottom은 뷰의 하단 가장자리를 나타냅니다.
firstTextBaseline은 최상위 텍스트의 기준선을 나타냅니다.
lastTextBaseline은 최하위 텍스트의 기준선을 나타냅니다.
"""
                )
                Text("")

                HStack(alignment: hStackAlginment) {
                    Text("")
                }

            }
            .listRowSeparator(.hidden)

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
