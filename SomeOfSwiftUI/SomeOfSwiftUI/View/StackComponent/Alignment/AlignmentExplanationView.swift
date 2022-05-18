//
//  AlignmentExplanationView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/03.
//

import SwiftUI

struct AlignmentExplanationView: View {

    @State private var alignment: Alignment = .topLeading

    let alignmentExplainString: String =
"""
Alignment에서는

   - topLeading
   - top
   - topTrailing

   - leading
   - center
   - trailing

   - bottomLeading
   - bottom
   - bottomTrailing

으로 아홉 개의 가이드를 제공합니다.

topLeading은 뷰의 위쪽과 앞쪽 가장자리를 나타냅니다.
top은 뷰의 위쪽 가장자리를 나타냅니다.
topTrailing은 뷰의 위쪽과 뒤쪽 가장자리를 나타냅니다.

leading은 뷰의 앞쪽 가장자리를 나타냅니다.
center은 뷰의 중심을 나타냅니다.
trailing은 뷰의 뒤쪽 가장자리를 나타냅니다.

bottomLeading은 뷰의 아래쪽과 앞쪽 가장자리를 나타냅니다.
bottom은 뷰의 아래쪽 가장자리를 나타냅니다.
bottomTrailing은 뷰의 아래쪽과 뒤쪽 가장자리를 나타냅니다.\t
"""

    var body: some View {
        List {
            Section {
                Text(alignmentExplainString)
                    .font(.callout)
                    .padding([.top, .bottom])
            }

            Section(header: Text("about leading&trailing")) {
                Image("AlignmentGuide")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }

            Section(header: Text("예제")) {
                Text("\(alignment.alignmentName)")
                    .font(.headline)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                    .padding(.top)

                Picker("what?", selection: $alignment) {
                    ForEach(Alignment.allCases, id: \.self) { alignment in
                        Text(alignment.alignmentNameAbbreviation)
                    }
                }
                .pickerStyle(.segmented)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))

                HStack {
                    Spacer()
                    ZStack(alignment: alignment) {
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width: 150, height: 150)
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                }
                .padding([.top, .bottom])
            }
            .listRowSeparator(.hidden)

        }
        .listStyle(.insetGrouped)
        .navigationTitle("Alignment")
        .navigationBarTitleDisplayMode(.large)
    }

}

struct AlignmentExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentExplanationView()
    }
}
