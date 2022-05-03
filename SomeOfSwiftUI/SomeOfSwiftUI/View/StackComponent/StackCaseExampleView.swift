//
//  StackCaseExampleView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/02.
//

import SwiftUI

struct StackCaseExampleView: View {
    let stackType: StackType

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss:SS"
        return formatter
    }

    var body: some View {
        let colors: [Color] = [.red, .orange, .yellow, .green, .blue]

        switch stackType {
        case .HStack:
            HStack(spacing: 0) {
                ForEach(0..<colors.count, id: \.self) {
                    Text("Item \($0 + 1)")
                        .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
                        .background(colors[$0])
                }
            }

        case .VStack:
            VStack(spacing: 0) {
                ForEach(0..<colors.count, id: \.self) {
                    Text("Item \($0 + 1)")
                        .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
                        .background(colors[$0])
                }
            }

        case .ZStack:
            ZStack {
                ForEach(0..<colors.count, id: \.self) {
                    Rectangle()
                        .fill(colors[$0])
                        .frame(width: 100, height: 100)
                        .offset(x: CGFloat($0) * 10.0,
                                y: CGFloat($0) * 10.0)
                }
            }
            .frame(width: 140, height: 140, alignment: .topLeading)

        case .LazyHStack:
            VStack(spacing: 30) {
                Text("스크롤 뷰와 함께 적용한 예시입니다.")
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 10) {
                        ForEach(1...100, id: \.self) {
                            Text("""
                                     Column \($0)
                                     CreatedTime
                                     \(dateFormatter.string(from: Date()))
                                     """)
                            .font(.footnote)
                            .padding(.bottom, 10)
                        }
                    }
                }
            }

        case .LazyVStack:
            VStack(spacing: 30) {
                Text("스크롤 뷰와 함께 적용한 예시입니다.")
                ScrollView(.vertical) {
                    LazyVStack(spacing: 0) {
                        ForEach(1...100, id: \.self) {
                            Text("Column \($0), CreatedTime: \(dateFormatter.string(from: Date()))")
                                .font(.footnote)
                        }
                    }
                }.frame(height: 300)
            }
        }
    }
}

struct StackCaseExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StackCaseExampleView(stackType: .VStack)
    }
}
