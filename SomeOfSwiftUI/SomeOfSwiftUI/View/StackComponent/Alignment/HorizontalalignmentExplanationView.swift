//
//  HorizontalalignmentExplanationView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/03.
//

import SwiftUI

struct HorizontalalignmentExplanationView: View {

    @State private var vStackAlignment: HorizontalAlignment = .leading

    let horizontalAlignmentExplainString: String =
"""
VerticalAlignment에서는
    leading
    center
    trailing
으로 세 개의 가이드를 제공합니다.

leading은 뷰의 앞쪽의 가장자리를 나타냅니다
center는 뷰의 수직 방향의 중심을 나타냅니다.
trailing은 뷰의 뒤쪽의 가장자리를 나타냅니다.\t
"""

    var body: some View {
        List {
            Section {
                Text(horizontalAlignmentExplainString)
                    .font(.callout)
                    .padding([.top, .bottom], 5)
            }

            // TODO: leading과 trailing에 대한 내용도 들어가면 좋을 듯
//            Section(header: Text("about leading&trailing")) {
//
//            }

            Section(header: Text("예제")) {
                Picker("what?", selection: $vStackAlignment) {
                    ForEach(HorizontalAlignment.allCases, id: \.self) { alignment in
                        Text(alignment.alignmentName)
                    }
                }
                .pickerStyle(.segmented)
                .listRowSeparator(.hidden)

                Text("selected : \(vStackAlignment.alignmentName)")
                HStack {
                    Spacer()
                    VStack(alignment: vStackAlignment) {
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
                    Spacer()
                }
                .padding([.top, .bottom], 10)
            }

        }
        .listStyle(.insetGrouped)
        .navigationTitle("HorizontalAlignment")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct HorizontalalignmentExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalalignmentExplanationView()
    }
}
