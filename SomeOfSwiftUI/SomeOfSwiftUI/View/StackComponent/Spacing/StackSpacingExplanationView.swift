//
//  StackSpacingExplanationView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/18.
//

import SwiftUI

struct StackSpacingExplanationView: View {
    let spacingExplanation: String =
"""
spacing을 통해 인접한 자식뷰들이 서로 어느정도의 간격을 줄 지 CGFloat 값으로 줄 수 있습니다. spacing은 Optional 값을 받으며, nil 값을 받을 경우 default 사이즈가 적용됩니다.
"""

    @State private var exampleSpacingSize: CGFloat = 7

    var body: some View {
        let colors: [Color] = [.red, .orange, .yellow, .green, .blue]

        List {
            Section {
                Text(spacingExplanation)
                    .padding([.top, .bottom])
            }
            Section {

                HStack(alignment: .center) {
                    Spacer()

                    VStack {
                        Spacer()
                        VStack(alignment: .center, spacing: exampleSpacingSize) {
                            ForEach(0..<colors.count, id: \.self) {
                                Text("Item \($0 + 1)")
                                    .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
                                    .background(colors[$0])
                            }
                        }
                        .padding(5)
                        .border(.red, width: 1)
                        Spacer()
                    }
                    .frame(height: 200)
                    Spacer()

                }

                Slider(
                    value: $exampleSpacingSize,
                    in: 0...15,
                    step: 5
                ) {
                    Text("spacing size")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("15")
                }

            }
            .listRowSeparator(.hidden)
        }
        .navigationTitle("Spacing")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct StackSpacingExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        StackSpacingExplanationView()
    }
}
