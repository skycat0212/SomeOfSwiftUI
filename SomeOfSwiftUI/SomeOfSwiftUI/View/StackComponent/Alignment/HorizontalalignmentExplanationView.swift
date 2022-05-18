//
//  HorizontalAlignmentExplanationView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/03.
//

import SwiftUI

struct HorizontalAlignmentExplanationView: View {

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
                    .padding([.top, .bottom])
            }

            // TODO: leading과 trailing에 대한 내용도 들어가면 좋을 듯
//            Section(header: Text("about leading&trailing")) {
//
//            }

            Section(header: Text("예제")) {
                Text("\(vStackAlignment.alignmentName)")
                    .font(.headline)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                    .padding(.top, 5)

                Picker("what?", selection: $vStackAlignment) {
                    ForEach(HorizontalAlignment.allCases, id: \.self) { alignment in
                        Text(alignment.alignmentName)
                    }
                }
                .pickerStyle(.segmented)
                .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))

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
                .padding([.top, .bottom])
            }
            .listRowSeparator(.hidden)

        }
        .listStyle(.insetGrouped)
        .navigationTitle("HorizontalAlignment")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct HorizontalalignmentExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalAlignmentExplanationView()
    }
}
