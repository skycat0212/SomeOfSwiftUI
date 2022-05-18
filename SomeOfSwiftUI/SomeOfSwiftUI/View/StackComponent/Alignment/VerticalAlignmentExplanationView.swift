//
//  VerticalAlignmentExplanationView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/03.
//

import SwiftUI

struct VerticalAlignmentExplanationView: View {
    @State private var hStackAlignment: VerticalAlignment = .top

    let verticalAlignmentExplainString: String =
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
firstTextBaseline은 최상위 텍스트의 BaseLine 나타냅니다.
lastTextBaseline은 최하위 텍스트의 BaseLine 나타냅니다. \t
"""

    var body: some View {
        List {
            Section {
                Text(verticalAlignmentExplainString)
                    .font(.callout)
                    .padding([.top, .bottom])
            }

            Section(header: Text("about BaseLine")) {
                Image("LetterArchitect")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }

            Section(header: Text("예제")) {
                Text("\(hStackAlignment.alignmentName)")
                    .font(.headline)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                    .padding(.top, 5)

                Picker("what?", selection: $hStackAlignment) {
                    ForEach(VerticalAlignment.allCases, id: \.self) { alignment in
                        Text(alignment.alignmentNameAbbreviation)
                    }
                }
                .pickerStyle(.segmented)
                .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))

                HStack(alignment: hStackAlignment) {
                    Spacer()
                    Text("Family\nName")
                        .multilineTextAlignment(.center)
                        .font(.headline)
                    Spacer()
                    Text("Kang")
                        .font(.caption)
                    Spacer()
                    Text("Kim")
                        .font(.caption)
                    Spacer()
                    Text("Lee")
                        .font(.caption)
                    Spacer()

                }
                .listRowSeparator(.hidden)
                .padding([.top, .bottom])
            }

        }
        .listStyle(.insetGrouped)
        .navigationTitle("VerticalAlignment")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct VerticalAlignmentExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalAlignmentExplanationView()
    }
}
